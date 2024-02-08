###################################################################
# Ce programme a pour objectif de renommer une liste de fichiers  #
###################################################################
# Fonctionnement :                                                #
#     - le script affiche un menu qui permet de :                 #
#         1 - Rechercher et remplacer un mot identique            #
#         2 - Ajouter un mot au début du nom                      #
#         3 - Ajouter un mot à la fin du nom                      #
#         4 - Supprimer un mot dans le nom                        #
###################################################################


#################### chargement des librairies

source("./script/librairie.R")

#################### Lister le contenu du dossier contenant les fichiers à renommer

source("./script/lister_fichier.R")

#################### Affichage de la boîte de dialogue de choix du type de renommage
choix_renommer <- NULL

while (is_empty(choix_renommer))
{
  choix_renommer <- dlg_list(c("Rechercher et remplacer un mot", "Ajouter un mot au début", "Ajouter un mot à la fin", "Supprimer un mot dans le nom"), multiple = FALSE, preselect = NULL, title = "Renommer une liste de fichiers ")$res
}


# Choix du type de renommage
if (choix_renommer == "Rechercher et remplacer un mot")
{
 
  #################### Rechercher et remplacer un mot identique
  source("./script/renommer_mot.R")
  
} else if (choix_renommer == "Ajouter un mot au début")
  {
 
  #################### Ajouter un mot au début du nom
  source("./script/renommer_debut.R")
  
  } else if (choix_renommer == "Ajouter un mot à la fin")
    {
    
    #################### Ajouter un mot au début du nom
    source("./script/renommer_fin.R")
    
  } else if (choix_renommer == "Supprimer un mot dans le nom")
    {
  
    #################### Supprimer un mot dans le nom
    source("./script/supprimer.R")
    
    }