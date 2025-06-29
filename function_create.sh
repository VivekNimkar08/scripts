#!/bin/bash

<<info
This function will create 
info

function create_user {

read -p "enter username: " username
sudo useradd -m $username 
echo "User created successfully"

}

for ((i=0;i<=3;i++))
do
create_user
done

