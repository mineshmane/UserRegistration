#!/bin/bash -x 
echo welcome to User registration

read -p "Enter user first Name: " firstName
read -p "Enter user last Name: " lastName
namePattern="^[A-Z]+[a-zA-Z]{2,}$"

function firstNameValidation(){

	if [[ $firstName =~ $namePattern ]]
	then
		echo "Valid $firstName"
	else
		echo "Invalid $firstName"
	fi
}

function lastNameValidation(){

	if [[ $lastName =~ $namePattern ]]
	then
		echo "Valid $lastName"
	else
		echo "Invalid $lastName"
	fi
}

firstNameValidation
lastNameValidation
