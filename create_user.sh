#!/bin/bash


<<help

This is multi
line comment

help

function create_user {
echo "_____________Creation of user started____________"

read -p "Enter the username: " username
read -p "Enter the password: " password
sudo useradd -m -p "$username" "$password"
}

function user_creation_completed {
echo "____________Creation of user comleted____________"

sudo userdel $username
}

function delete_user {
echo "___________Deletion of user completed____________"

if [$(cat /etc/passwd | grep username | wc | awk '{print $1}') == 0]; 
then
echo "as the wc is 0 the $username is deleted"
else
	echo "as we is not 0 $username is exists"
fi
}

create_user
user_creation_completed
delete_user
