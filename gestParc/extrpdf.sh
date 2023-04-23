login=romain
mdp=btsinfo
mdpBDD=btsinfo



sudo mysql --user=romain --password=$mdpBDD 'test' -e "select adIP from Equipement where adIP;" >> ipa.txt;
sudo mysql --user=romain --password=$mdpBDD 'test' -e "select * from Equipement;" >> resuméequip.txt;
sudo mysql --user=romain --password=$mdpBDD 'test' -e "select * from TypeE;" >> resumétype.txt;
