mdpBDD=btsinfo
mdp=btsinfo
login=romain
echo "Veuilliez saisir l'id de la saisie:"
read numa
sudo mysql --user=romain --password=$mdpBDD 'test' -e "delete from Equipement where id='"$numa"';";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "delete from TypeE where id='"$numa"';";
#sudo mysql --user=romain --password=$mdpBDD 'test' -e "delete from TypeE where id='"$numa"';";
