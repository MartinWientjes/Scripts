# df command
# df
# Filesystem                                             512-blocks        Used  Available Capacity    iused     ifree %iused  Mounted on
# /dev/disk0s2                                           3905349952  3718360120  186477832    96%  464859013  23309729   95%   /
# devfs                                                         368         368          0   100%        638         0  100%   /dev
# map -hosts                                                      0           0          0   100%          0         0  100%   /net
# map auto_home                                                   0           0          0   100%          0         0  100%   /home
# map -fstab                                                      0           0          0   100%          0         0  100%   /Network/Servers
# //Martin@N5550._afpovertcp._tcp.local./R5_TimeMachine 15494054816 13193946608 2300108208    86% 1649243324 287513526   85%   /Volumes/R5_TimeMachine
# /dev/disk2s2                                          15493382992 13193340320 2300042672    86%  824583768 143752667   85%   /Volumes/Time Machine Backups
# //martin@n5550/R5_Foto_Archief                        15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/R5_Foto_Archief
# //martin@n5550/R5_Backup_iMac                         15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/R5_Backup_iMac
# //martin@n5550/R5_TimeMachine                         15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/R5_TimeMachine-1
# //martin@n5550/NAS_Public                             15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/NAS_Public
# //martin@n5550/iTunes_music                           15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/iTunes_music
# //martin@n5550/R5_Backup_MBP                          15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/R5_Backup_MBP
# //martin@n5550/R5_Video                               15494087584 13193979376 2300108208    86% 1649247420 287513526   85%   /Volumes/R5_Video

#  fstatfs(2), getfsstat(2), statfs(2), getmntinfo(3), compat(5), fstab(5), mount(8), quot(8)q

# >>> lsvfs 
# Filesystem                        Refs Flags
# -------------------------------- ----- ---------------
# nfs                                  0 
# hfs                                  2 local, dovolfs
# devfs                                1 
# autofs                               3 
# afpfs                                1 
# smbfs                                7 


# mount -t smbfs //user@server/sharename share

umount /Volumes/R5_Foto_Archief
umount /Volumes/R5_Backup_iMac
umount /Volumes/R5_TimeMachine-1
umount /Volumes/NAS_Public
umount /Volumes/iTunes_music
umount /Volumes/R5_Backup_MBP
umount /Volumes/R5_Video

mount -t smbfs //martin@n5550/R5_Foto_Archief               /Volumes/R5_Foto_Archief/
mount -t smbfs //martin@n5550/R5_Backup_iMac                /Volumes/R5_Backup_iMac
mount -t smbfs //martin@n5550/R5_TimeMachine                /Volumes/R5_TimeMachine-1
mount -t smbfs //martin@n5550/NAS_Public                    /Volumes/NAS_Public
mount -t smbfs //martin@n5550/iTunes_music                  /Volumes/iTunes_music
mount -t smbfs //martin@n5550/R5_Backup_MBP                 /Volumes/R5_Backup_MBP
mount -t smbfs //martin@n5550/R5_Video                      /Volumes/R5_Video
