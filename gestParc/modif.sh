mdpBDD=btsinfo
mdp=btsinfo
login=romain
echo "Modification du nom de la table:"
read azer
echo "Saisir l'id:"
read nom
echo "Modification de l'adresse MAC:"
read macc
echo "Saisir l'id:"
read mac
echo "Modification de l'ip:"
read ipp
echo "Saisir l'id:"
read ip
echo "Modification du cidr:"
read cidrr
echo "Saisir l'id:"
read cidr
echo "Modification de l'idt:"
read idtt
echo "Saisir l'id:"
read idt
echo "Modification du libelle:"
read libell
echo "Saisir l'id:"
read libel
sudo mysql --user=romain --password=$mdpBDD 'test' -e "update Equipement set nom='"$azer"' where id = '"$nom"';";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "update Equipement set adMAC='"$macc"' where id = '"$mac"';";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "update Equipement set adIP='"$ipp"' where id = '"$ip"';";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "update Equipement set CIDR='"$cidrr"' where id = '"$cidr"';";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "update Equipement set idt='"$idtt"' where id = '"$idt"';";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "update TypeE set libelle='"$libell"' where id = '"$libel"';";
