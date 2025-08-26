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

# Renommer le ou les fichiers
renommage()

