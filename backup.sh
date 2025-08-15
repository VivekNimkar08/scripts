#!/bin/bash

<<help
This comment is just for checking
This is backup scripts
help

<<info
This shell scripts take periodic backup
eg.
./backup.sh <source> <destination>
src= /home/ubuntu/scripts
des= /home/ubuntu/backup
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src
echo "backup done"
