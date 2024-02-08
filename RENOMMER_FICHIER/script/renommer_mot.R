#################### Rechercher et remplacer un mot identique

# Affichage d'une boîte de dialogue pour saisir le mot à remplacer
ancienne_partie <- NULL

while (is_empty(ancienne_partie))
{
  ancienne_partie <- dlgInput("Partie du nom à remplacer")$res
}

# Affichage d'une boîte de dialogue pour saisir le mot remplaçant
nouvelle_partie <- NULL

while (is_empty(nouvelle_partie))
{
  nouvelle_partie <- dlgInput("Remplacer par :")$res
}

# Préparation du nouveau nom
nv_fichier$Fichier <- str_replace_all(nv_fichier$Fichier, ancienne_partie, nouvelle_partie)

# Création du nouveau chemin
nv_fichier <- nv_fichier %>%
              mutate(Chemin = paste(Chemin, paste(Fichier, Extension, sep = "."), sep = "/")) %>%
              select(-Fichier, -Extension)

# Renomage des fichiers
for (i in 1:count(nv_fichier)$n)
{
  file.rename(from = nv_fichier[i,1], to = nv_fichier[i,2])
}


