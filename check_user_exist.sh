#!/bin/bash

<<info
This script check that user is exist or not
info

read -p "Enter the username" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "user does not exists"
else
        echo "user exist"
fi	

