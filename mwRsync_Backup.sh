cd /Users/martin/mw/fotos

echo "Cleanup started"
sudo find . -name "Thumbs.db" -type f -exec rm {} \;
sudo find . -name ".DS_Store" -depth  -type f -exec rm {} \;
sudo find . -name ".BridgeCacheT" -depth  -type f -exec rm {} \;
echo "Cleanup finished"

echo ">>>>>>>>>>>>>    Rsync section 	<<<<<<<<<<<<<<<<<<<<<"
echo Step 1 : sudo rsync -aE -v  --recursive --progress --times --delete /Users/martin/MW/Fotos/ 	/Volumes/R5_Foto_Archief/Fotos/
sudo rsync -aE -v --recursive --progress --times --delete /Users/martin/MW/Fotos/ 	/Volumes/R5_Foto_Archief/Fotos/
echo Step 2 : sudo rsync -aE -v --recursive --progress --times --delete /Users/martin/MW/Fotos/ 	/Volumes/R5_Foto_Archief/FotosSecond/
sudo rsync -aE -v --recursive --progress --times --delete /Users/martin/MW/Fotos/ 	/Volumes/R5_Foto_Archief/FotosSecond/
echo Step 3 : sudo rsync -aE -v --recursive --progress --times --delete /Users/martin/mw/fotos/ 	/Volumes/R5_Backup_iMac/Users/martin/mw/fotos/
sudo rsync -aE -v --recursive --progress --times --delete /Users/martin/mw/fotos/ 	/Volumes/R5_Backup_iMac/Users/martin/mw/fotos/


echo ">>>>>>>>>>>>>    Checks 	<<<<<<<<<<<<<<<<<<<<<"

/usr/bin/diff -r --brief /Users/martin/MW/Fotos 			/Volumes/R5_Foto_Archief/Fotos
/usr/bin/diff -r --brief /Users/martin/MW/Fotos 			/Volumes/R5_Foto_Archief/FotosSecond
/usr/bin/diff -r --brief /Users/martin/mw/fotos 			/Volumes/R5_Backup_iMac/Users/martin/mw/fotos
