#################### Supprimer un mot

# Affichage d'une boîte de dialogue pour saisir le mot à supprimer
nouvelle_partie <- NULL

while (is_empty(nouvelle_partie))
{
  nouvelle_partie <- dlgInput("Quel mot voulez vous supprimer ? (Attention à respecter la casse du mot)")$res
}

# Suppression du mot saisi
nv_fichier$Fichier <- gsub(nouvelle_partie, "", nv_fichier$Fichier)

# Controle de la présence de _
  for(i in seq_along(nv_fichier[,3]))
  {
    # Suppression _ au début
    if (substr(nv_fichier[i,3], 1, 1) == "_")
    {
    nv_fichier[i,3] <- substr(nv_fichier[i,3], 2, nchar(nv_fichier[i,3]))
    }
    
    # Suppression _ à la fin
    if (substr(nv_fichier[i,3], nchar(nv_fichier[i,3]), nchar(nv_fichier[i,3])) == "_")
    {
      nv_fichier[i, 3] <- sub("_$", "", nv_fichier[i, 3])
    }
    
    # Si 2 _ successif suite à remplacement du nom remplacement par 1
    nv_fichier[i, 3] <- str_replace_all(nv_fichier[i, 3], "__", "_")
  
  } 

# Préparation du nouveau nom
nv_fichier$Fichier <- str_replace_all(nv_fichier$Fichier, ancienne_partie, nouvelle_partie)

# Renommer le ou les fichiers
renommage()