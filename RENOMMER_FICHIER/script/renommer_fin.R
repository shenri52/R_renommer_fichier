#################### Ajouter un mot à la fin

# Affichage d'une boîte de dialogue pour saisir le mot à ajouter à la fin du nom
nouvelle_partie <- NULL

while (is_empty(nouvelle_partie))
{
  nouvelle_partie <- dlgInput("Quel mot voulez vous à ajouter à la fin du nom ? :")$res
}

# Préparation du nouveau nom
nv_fichier$Fichier <- paste(nv_fichier$Fichier, nouvelle_partie, sep ="_")

# Renommer le ou les fichiers
renommage()