#!/bin/bash
# Criado por: Esponnja Twitter:@0xtx1
cyan="\033[0;36m"
vermelho="\033[0;31m"

if [ ! $( id -u ) -eq 0 ]; then
    echo -e "\033[0;31m[-]\033[0m Execute com Root"
    echo -e "\033[0;31m[-]\033[0m Tente novamente"
    exit 2
fi

IS_CHROOT=0 
USERNAME=""
DIR_DEVELOP=""


if [ -d "/srv" ]; then
    IS_CHROOT=1 
    DIR_DEVELOP=/usr/local/bin/develop 
else
    USERNAME=$(logname) 
    DIR_DEVELOP=/home/$USERNAME/develop 
fi

echo "Adding forensic packages"

apt-get install -y autopsy dcfldd foremost
apt-get install -y scalpel sleuthkit
apt-get install -y unhide vinetto
apt-get install -y bkhive chntpw dvdisaster dvdisaster-doc
apt-get install -y e2undel ext3grep gddrescue gzrt gpar2 magicrescue
apt-get install -y ophcrack ophcrack-cli recover recoverdm recoverjpeg
apt-get install -y safecopy scrounge-ntfs
apt-get install -y dares dares-qt ddrescue gddrescue myrescue
apt-get install -y partimage-doc
apt-get install -y hfsplus hfsutils jfsutils mtd-utils reiser4progs
apt-get install -y gpart readpst readpst-dbg chkrootkit john
apt-get install -y lsscsi

exit 0