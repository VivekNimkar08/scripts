#!/bin/bash
<<info
Installing package based on arguments
./install_package.sh nginx
./install_package.sh unzip
info

echo "installing package $1"

sudo apt-get update < /dev/null
sudo apt-get install $1 -y

echo "$1 package is installed"


