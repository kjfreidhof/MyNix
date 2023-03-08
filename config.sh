#!/bin/sh

echo "Do you want to install the NixOS configuration system wide?"
read Reply

if [ "$Reply" = yes ]; then
	cp configuration.nix /etc/nixos/
	exit

else 
	echo "Exiting....."
	sleep 5
	exit

fi


