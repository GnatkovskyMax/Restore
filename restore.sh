#!/bin/bash
if echo "$1" | grep  '[0-3][0-9]-[0-1][0-9]-[0-9][0-9][0-9][0-9]'  ; then
    if [ -d backups/$1 ]; then
    BACKUPDATE=$1
    unzip -d ./uploads backups/$BACKUPDATE/uploads.zip 
    cp backups/$BACKUPDATE/dump.sql.gz  ./
    gzip -d ./dump.sql.gz
    echo 'Backup restored successful'
    else 
    echo 'Wrote by you directory does not exist'
    fi
else
echo "Wrong format of date, input date in format 02-18-2019"
fi




