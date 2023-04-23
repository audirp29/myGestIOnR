#!/bin/bash

#import des configs et fonctions
#source config.sh
source fonction.sh

afficheTitre "Gestion du parc"
quitter=1
while [[ $quitter -ne 0 ]]
do
echo -e "\nMenu :"
echo "1) Consulter les données"
echo "2) Ajouter des données"
echo "3) Supprimer des données"
echo "4) Modifier des données"
echo "0) Retour au menu principal"
echo -e "Veuillez choisir une option :"
read choix
case $choix in 
	1 )
		./affiche.sh
		;;
	2 )
		./ajout.sh
		;;
	3 )
		./suppr.sh
		;;
	4 )
		./modif.sh
		;;
	0 )
		quitter=0
		;;
	* )
		echo "Erreur dans la saisie"
		;;
esac
done
