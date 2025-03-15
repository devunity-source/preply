#!/bin/bash

#read, if,for,while:
# we need to let the user only try 5 times. if the user/pass is incorrect, its going to exit with "too many failed attempts. Exiting..."

# lt,gt,ge,le,eq,ne

user='rakan'
pass='12345'
max_attempts=5
failed=0
attempts_left=5
while [ $failed -lt $max_attempts ];do

	read -p "Enter your username: " username
	read -p "Enter your password: " password
	if [ "$username" == "$user" ] && [ "$password" == "$pass" ];then
		echo "Login Successfully, Welcome $username!"
		exit
	else
		((failed++))
		((attempts_left--))
		echo "Incorrect username/password,you have $attempts_left tries left, Please try again!"
	fi
done

echo "Too many failed attempts, Exiting..."



#failed=$(($failed + 1))
