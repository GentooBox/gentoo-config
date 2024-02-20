#!/bin/bash
  
RSYNC="/usr/bin/rsync"
OPTS="--quiet --recursive --links --perms --times -D --delete --timeout=300 --checksum"
#Uncomment the following line only if you have been granted access to masterportage.gentoo.org
#SRC="rsync://masterportage.gentoo.org/gentoo-portage"
#If you are waiting for access to our master mirror, select one of our mirrors to mirror from:
SRC="rsync://rsync.de.gentoo.org/gentoo-portage" # for Europe
#SRC="rsync://rsync.us.gentoo.org/gentoo-portage" # for the rest of the world
DST="/var/portage"
  
echo "Started update at" `date` >> $0.log 2>&1
logger -t rsync "re-rsyncing the gentoo-portage tree"
${RSYNC} ${OPTS} ${SRC} ${DST} >> $0.log 2>&1
  
echo "End: "`date` >> $0.log 2>&1
