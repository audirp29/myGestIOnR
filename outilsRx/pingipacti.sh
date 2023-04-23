#!/bin/bash

#lecture des lignes
while read ip; 
do
#ping
ping -c 1 $ip >/dev/null
#check commande et affiche
if [ $? -eq 0 ]; 
then
echo "ping ok: $ip"
else
echo "ping fail: $ip"
fi
done < $1
