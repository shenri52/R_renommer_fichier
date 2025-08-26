#################### Ajouter un mot au début du nom


# Affichage d'une boîte de dialogue pour saisir le mot à ajouter au début du nom
nouvelle_partie <- NULL

while (is_empty(nouvelle_partie))
{
  nouvelle_partie <- dlgInput("Quel mot voulez vous à ajouter au début du nom ? :")$res
}

# Préparation du nouveau nom
nv_fichier$Fichier <- paste(nouvelle_partie, nv_fichier$Fichier, sep ="_")

# Renommer le ou les fichiers
renommage()