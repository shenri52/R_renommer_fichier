# Fonction de renommage des fichiers

renommage <- function()
            {
              # Création du nouveau chemin
              nv_fichier <- nv_fichier %>%
                            mutate(Chemin = paste(Chemin, paste(Fichier, Extension, sep = "."), sep = "/")) %>%
                            select(-Fichier, -Extension)
              
              # Renommage des fichiers
              for (i in 1:count(nv_fichier)$n)
              {
                file.rename(from = nv_fichier[i,1], to = nv_fichier[i,2])
              }
}
