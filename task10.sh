#!/bin/bash

sudo apt update

if [ $(apt list --upgradable 2>/dev/null | wc -l) -gt 1 ]; then
	echo "Updating the system"
	sudo apt upgrade -y
	echo "System is up to date"
else
	echo "No updates were found"
fi
