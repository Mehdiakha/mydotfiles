#! /bin/bash
# Usage: ./backup.sh ~/Documents /mnt/Documents 

SOURCE="$1"
DEST="$2"

DATE=$(date +%Y-%m-%d-%H-%M-%S)
FILENAME="backup_${DATE}.tar.gz"

LOGFILE="$DEST/backup.log"

# check if source exists
if [[! -d "$SOURCE"]]; then 
   echo "source directory doesn't exist!"
   echo 1 
fi

mkdir -p $DEST

tar -czf "$DEST/FILNAME" "$SOURCE" 2>>"$LOGFILE"


