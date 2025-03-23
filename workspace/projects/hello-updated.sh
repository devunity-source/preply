#!/bin/bash


attempts=5

while true;do

echo "would you like to calculate something? (y/n)?"
read choice

if [[ "$choice" == "n" ]];then
	break
fi

if [[ "$choice" == "y" ]];then

if [[ $attempts == 0 ]];then
	echo "you have used all the attempts, exiting..."
	exit 1
fi

echo "Enter 1st value: "
read num1 


if [[ ! "$num1" =~ [0-9] ]];then
	echo "$num1 is not a number, try again" 
	attempts=$((attempts - 1))
	echo "you have $attempts attempts left"
	continue
fi

echo "Enter 2nd Value: "
read num2

if [[ ! "$num2" =~ ^[0-9]$ ]];then 
	echo "$num2 is not a number, try again"
	attempts=$((attempts - 1))
	continue
fi

echo "Choose an operation *,/,+,- "
read  operation

if [ "$operation"  == "+" ];then

  echo $num1 "+" $num2 = $(( num1 + num2 ))


elif [ "$operation" == "-" ];then

  echo $num1 "-" $num2 = $(( num1 - num2 ))  


elif [ "$operation" == "*" ];then 

  echo $num1 "*" $num2 = $(( num1 * num2 )) 

elif [ "$operation" == "/" ];then 
	echo $num1 "/" $num2 = $(( num1 / num2 ))  
else 
	echo "$operation is not an operation, try again!" 
        attempts=$((attempts - 1))	
	continue
fi



else
	echo "Please choose a correct value"
fi
done



echo 'Good bye'
