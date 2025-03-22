#! /bin/bash 
echo "Enter 1st value: "
read num1 
echo "Enter 2nd Value: "
read num2 
echo "Choose an operation *,/,+,- "
read  operation 

regx='[0-9]'

if ! [[ "$num1" =~ $regx ]]  
then 
echo "This is not a number" $num1 
exit 1 
fi

if ! [[ "$num2" =~ $regx ]]
then 
echo "This is not a number" $num2 
exit 1
fi

if [ "$operation"  == "+" ] 
then
  echo $num1 "+" $num2 = $(( num1 + num2 ))

elif [ "$operation" == "-" ]
then
  echo $num1 "-" $num2 = $(( num1 - num2 ))  

elif [ "$operation" == "*" ] 
then 
  echo $num1 "*" $num2 = $(( num1 * num2 )) 

elif [ "$operation" == "/" ]
then 
 echo $num1 "/" $num2 = $(( num1 / num2 ))  
 
else 
  echo "Not a operation!" 

fi 





