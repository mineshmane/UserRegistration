#!/bin/bash -x 
echo welcome to User registration

read -p "Enter user first Name: " firstName

firstNamePattern="^[A-Z]+[a-zA-Z]{2,}"

if [[ $firstName =~ $firstNamePattern ]]
then
	echo "valid $firstName"
else
	echo "invalid $firstName"
fi
