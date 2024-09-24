#################### Renommer de 1 à x une liste de fichiers contenus dans plusieurs dossiers


# Compter le nombre de caractère dans le nombre de fichier
n_chiffre <- nchar(nrow(nv_fichier))

# Préparer le renommage 
for (i in 1:nrow(nv_fichier))
{
  
  # Numéroter les fichiers de 1 à X
  nv_fichier[i, 3] <- i
  
  # Ajouter des 0 en début nom pour garder l'ordre chronologique (1 si 10, 2 si 100, 3 si 1000...)
  while(nchar(nv_fichier[i,3]) < n_chiffre)
  {
    nv_fichier[i, 3] <- paste("0", nv_fichier[i, 3], sep = "")
  }
}

# Préparer le chemin vers le dossier temporaire
nv_fichier <- nv_fichier %>%
              mutate(Chemin_tmp = paste("tmp", paste(Fichier, Extension, sep = "."), sep = "/"))

# Copier les fichiers renommer dans le répertoire temporaire, et les supprimer du répertoire d'origine
for (i_tmp in 1:nrow(nv_fichier))
{
  file.copy(from = nv_fichier[i_tmp,1], to = nv_fichier[i_tmp,5])
  file.remove(nv_fichier[i_tmp,1])
}

# Replacer les fichiers renommer dans leur dossier d'origine
for (ii in 1:nrow(nv_fichier))
{
  file.move(nv_fichier[ii,5], nv_fichier[ii,2])
}