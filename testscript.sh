user='rakan'
pass='12345'


echo 'Please enter your username:'
read username

echo 'Please enter your password:'
read password


if [ "$username" = "$user" ];then
	if [ "$password" = "$pass" ];then
		echo "welcome $username !"
	fi
else
	echo "incorrect username or password"

fi
