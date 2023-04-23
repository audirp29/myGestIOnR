#!/bin/bash

echo testTCP
figlet "Consulation des adresses IP"

echo "les ip actives de la machine sont"

ip a|grep "169"
ip a|grep "/28"| tr -s ' ' | cut -d' ' -f3
ip a|grep "/24"| tr -s ' ' | cut -d' ' -f3
ip a|grep "/16"| tr -s ' ' | cut -d' ' -f3
ip a|grep "/8"| tr -s ' ' | cut -d' ' -f3


echo "Quel n° de port voulez vous tester  ?"

read aport

echo "Sur quelle adresse IP voulez vous tester le port ?"

read adrip
#ipvalide $adrip

resultat=$(nmap $adrip -p $aport | grep open | wc -l) 

if  [[ $resultat == 1 ]]
then
	echo "le port est ouvert sur l'adresse selectionnée"
else
	echo "le port n'est pas ouvert sur l'adresse IP"
fi
