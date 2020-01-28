#!/bin/bash -x 
echo welcome to User registration

read -p "Enter user first Name: " firstName
read -p "Enter user last Name: " lastName
read -p "Enter User email : " email
read -p "Enter user Mobile Number: " mobileNumber
read -p "Enter paswword :" password 
namePattern="^[A-Z]+[a-zA-Z]{2,}$"
emailPattern="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z0-9A-Z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"
mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"
passwordPattern="^[a-zA-Z]{8}"

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
function emailValidation(){
	if [[ $email =~ $emailPattern ]]
	then
		echo "Email is Valid " $email
	else
		echo "Email inValid " $email
	fi
}
function mobileNumberValidation(){
	if [[ $mobileNumber =~ $mobilePattern ]]
	then
		echo "mobile Number is Valid " $mobileNumber
	else
		echo "invalid mobile Number " $mobileNumber
	fi
}
function passwordValidation(){
	if [[ $password =~ $passwordPattern ]]
	then
		echo "valid password: " $password
	else
		echo " invalid password " $password
	fi
}
firstNameValidation
lastNameValidation
emailValidation
mobileNumberValidation
passwordValidation
