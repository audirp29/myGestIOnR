#!/bin/bash

echo testIP
figlet "Test d'adresses ip" 

echo "Veuillez saisir une adresse IP à tester  :"

read ip


ping -c4 $ip > /dev/null
if [[ $? -eq 0 ]];
then
	echo "l'adresse IP testée est active"
else 
	echo "l'adresse IP testée n'est pas active"
fi
