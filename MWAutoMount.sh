mount -t cifs '//thuis;martin:Nommern2!@N5550/Video' /Volumes/Video

umount /Volumes/Video

mount -t smbfs //user@server/sharename share

osascript -e 'mount volume "smb://user:password@server/share"'

ssh root@192.168.2.100

