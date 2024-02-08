#################### Lister le contenu du dossier contenant les fichiers à renommer
lecteur <- NULL

# Affichage d'une boîte de dialogue pour indiquer le dossier contenant les fichiers à renommer
while (is_empty(lecteur))
{
  lecteur <- dlg_dir(default = getwd(), title = "Choisir le dossier contenant les fichiers à renommer")$res
}

# Récupération de la liste des fichiers
anc_fichier <- list.files(path = lecteur,
                          full.names = TRUE,
                          recursive = TRUE)

# Préparation du renommage des fichiers
nv_fichier <- as.data.frame(anc_fichier) %>%
              mutate(Chemin = dirname(anc_fichier)) %>%
              mutate(Fichier = basename(anc_fichier)) %>%
              # Séparation du nom et de l'extension
              mutate(Extension = sub("^.+\\.", "", Fichier)) %>%
              mutate(Fichier = substr(Fichier, 1, (nchar(Fichier)-nchar(as.character(Extension))-1)))
