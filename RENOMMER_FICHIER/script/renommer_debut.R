#################### Ajouter un mot au début du nom


# Affichage d'une boîte de dialogue pour saisir le mot à ajouter au début du nom
nouvelle_partie <- NULL

while (is_empty(nouvelle_partie))
{
  nouvelle_partie <- dlgInput("Quel mot voulez vous à ajouter au début du nom ? :")$res
}

# Préparation du nouveau nom
nv_fichier$Fichier <- paste(nouvelle_partie, nv_fichier$Fichier, sep ="_")

# Création du nouveau chemin
nv_fichier <- nv_fichier %>%
              mutate(Chemin = paste(Chemin, paste(Fichier, Extension, sep = "."), sep = "/")) %>%
              select(-Fichier, -Extension)

# Renommage des fichiers
for (i in 1:count(nv_fichier)$n)
{
  file.rename(from = nv_fichier[i,1], to = nv_fichier[i,2])
}


