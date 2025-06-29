#!/bin/bash

hero="rancho"
villan="virus"

#User-defined variable
echo "3_idiots ka hero hai $hero"
echo "3_idiots ka villan hai $villan"

#enviroment variable

echo "current logged in user $USER"

read -p "rancho ka pura nam ky tha" fullname
echo "rancho ka pura nam $fullname tha"

#arguments

# ./3_idiots.sh raju farahan rancho

echo "movie ka nam: $0"
echo "first idiot: $1"
echo "seconf idiot: $2"
echo "thrird idiot: $3"
echo "total number of idiots: $#"
echo "Hence 3_idiots are $@"
