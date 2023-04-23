mdpBDD=btsinfo
mdp=btsinfo
login=romain
sudo mysql --user=romain --password=$mdpBDD 'test' -e "select * from Equipement;";
sudo mysql --user=romain --password=$mdpBDD 'test' -e "select * from TypeE;";
