echo " Cleanup started"
cd ~
sudo find . -name "Thumbs.db" -type f -exec rm {} \;
sudo find . -name ".DS_Store" -depth  -type f -exec rm {} \;
sudo find . -name ".BridgeCacheT" -depth  -type f -exec rm {} \;
echo "Part 1 finished"




