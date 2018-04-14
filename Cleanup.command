echo " Cleanup started"
cd /Users/martin/Documents/MW/Fotos
sudo find . -name Thumbs.db -type f
sudo find . -name ".DS_Store" -depth  -type f -exec rm {} \;
sudo find . -name ".BridgeCacheT" -depth  -type f -exec rm {} \;
sudo find . -name "Thumbs.db" -type f -delete
echo "Part 1 finished"
========================================================================
sudo periodic daily weekly monthly

========================================================================



