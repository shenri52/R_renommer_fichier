# Script R : renommer_fichier

Ce script permet de renommer une liste de fichiers.

Il propose de :
  * rechercher et remplacer un mot dans le nom
  * rechercher et supprimer un mot dans le nom
  * ajouter un mot au début du nom
  * ajouter un mot à la fin du nom
  * renommer une liste de fichiers de 1 à X

Renommer une liste de fichiers permet de renommer des fichiers situés dans plusieurs sous-répertoire d'un répertoire principal. Les fichiers seront renommés de 1 à X en respectant l'odre alphanumérique initial.

## Descriptif du contenu

* Racine : emplacement du projet R --> "RENOMMER_FICHIER.Rproj"
* Un dosssier script qui contient :
  * prog_renommer_fichier.R --> script principal
  * librairie.R --> script contenant les librairies utiles au programme
  * lister_fichier.R --> script listant les fichiers à renommer
  * renommer_debut --> script permettant d'ajouter un mot au début du nom
  * renommer_fin --> script permettant d'ajouter un mot à la fin du nom
  * renommer_mot --> script permettant de rechercher et remplacer un mot dans le nom
  * supprimer_mot --> script permettant de rechercher et supprimer un mot dans le nom
  * renommer_liste_fichier.R --> script permettant renommer une liste de fichier

## Fonctionnement

Lancer le script intitulé "prog_renommer_fichier" qui se trouve dans le dossier "script".
