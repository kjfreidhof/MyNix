#!/bin/sh

build="sudo nixos-rebuild switch"

echo "Do you want to rebuild NixOS? "
echo "y, Yes"
echo "n, No"
read CHOICE

if [ "$CHOICE" = y ]; then
	for i in 5
	do
		echo "building...."
		sleep $i
		$build
		continue

	done

else
	echo "Exiting...."
	exit

fi



echo "Do you want to reboot? "
echo "y, Yes"
echo "n, No"

read Reply

if [ "$Reply" = y ]; then
	echo "Rebooting...."
	reboot

else
	exit


fi







