###################################################################
# Ce programme a pour objectif de renommer une liste de fichiers  #
###################################################################
# Fonctionnement :                                                #
#     - le script affiche un menu qui permet de :                 #
#         1 - Rechercher et remplacer un mot dans le nom          #
#         2 - Ajouter un mot au début du nom                      #
#         3 - Ajouter un mot à la fin du nom                      #
#         4 - Supprimer un mot dans le nom                        #
#         5 - Renommer une liste de fichier de 1 à X              #
#             Ces fichiers peuvent être répartis dans plusieurs   #
#             dossiers.                                           #
###################################################################


#################### chargement des librairies

source("./script/librairie.R")

#################### Charger fonction
source("./script/f_renommage.R")

#################### Lister le contenu du ou des dossier contenant les fichiers à renommer

source("./script/lister_fichier.R")

#################### Affichage de la boîte de dialogue de choix du type de renommage
choix_renommer <- NULL

while (is_empty(choix_renommer))
{
  choix_renommer <- dlg_list(c("Rechercher et remplacer un mot",
                               "Ajouter un mot au début",
                               "Ajouter un mot à la fin",
                               "Supprimer un mot dans le nom",
                               "Renommer une liste de fichiers de 1 à X"),
                             multiple = FALSE,
                             preselect = NULL,
                             title = "Renommer une liste de fichiers ")$res
}


# Choix du type de renommage

#################### Rechercher et remplacer un mot identique
if(choix_renommer == "Rechercher et remplacer un mot")
{
  source("./script/renommer_mot.R")
}
  
#################### Ajouter un mot au début du nom
if(choix_renommer == "Ajouter un mot au début")
{
  source("./script/renommer_debut.R")
}
  
#################### Ajouter un mot au début du nom
if(choix_renommer == "Ajouter un mot à la fin")
{
  source("./script/renommer_fin.R")
}

#################### Supprimer un mot dans le nom
if(choix_renommer == "Supprimer un mot dans le nom")
{
  source("./script/supprimer_mot.R")
}
  
#################### Renommer de 1 à x une liste de fichiers contenus dans plusieurs dossiers
if(choix_renommer == "Renommer une liste de fichiers de 1 à X")
{
  source("./script/renommer_liste_fichier.R")
}


