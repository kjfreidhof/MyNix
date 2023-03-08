#!/bin/sh

build="sudo nixos-rebuild switch"
garbage="sudo nix-collect-garbage -d"

echo "Do you want to take out the garbage on you config?"
echo "y, Yes"
echo "n, No"

read CHOICE

if [ "$CHOICE" = y ]; then
	for i in 5
	do
		echo "taking out Garbage...."
		sleep $i
		$garbage
		sleep $i 
		echo "rebuilding...."
		sleep $i
		$build
		continue

	done

else
	echo "Exiting...."
	exit

fi

echo "Do you want to reboot or exit?"
read $Reply
$Reply

