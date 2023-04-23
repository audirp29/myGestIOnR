#!/bin/bash

echo "installation des elements essentiels du programme"
#if [ "$EUID" -ne 0 ]
#then echo "executer le prog en admin"
#exit
#fi

#apt update
#apt install figlet
#apt install net-tools
#apt install mariadb-server
#puts "\n"

echo "Bienvenue dans l'installation de myGest_IOnR"

read -p "Quel type d'installation voulez Vous effectuer ? (client/serveur) " serveur

if [ "$serveur" == "serveur" ]; then
    SERVEUR=1
else
    SERVEUR=0
fi

read -p "Entrez le nom d'utilisateur pour la base de données : " login
echo ""
read -s -p "Entrez le mot de passe pour l'utilisateur : " mdp
echo ""
read -s -p "Entrez le mot de passe pour la base de données : " mdpBDD
echo ""
read -p "Entrez le nom de la base de données : " nomdb

echo "Installation des paquets"

if which mariadb-server >/dev/null; then
	echo "Mariadb est déjà installé"
else
	echo "Installation de mariadb"
	apt update
	apt install mariadb-server
fi

echo "Création de la base de données..."

mysql --user=root --password=$mdpBDD -e "CREATE USER ""$login""@"localhost" IDENTIFIED BY ""$mdp""; GRANT ALL ON "$login".* TO ""$login""@"localhost";"
mysql --user=root --password=$mdpBDD -e "CREATE DATABASE "test";

echo "installation terminée"

# Créer le fichier config.sh avec les variables appropriées

echo "SERVEUR=$SERVEUR" > config.sh
echo "DB_USER=$login" >> config.sh
echo "DB_USER_MDP=$mdp" >> config.sh
echo "DB_MDP=$mdpBDD" >> config.sh
echo "DB_NOM=$nomdb" >> config.sh
