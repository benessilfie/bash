#!/bin/bash


echo "You died"

echo "Hey, do you like coffee? (y/n)"

read coffee

if [[ $coffee == "y" ]]; then
	echo "You're awesome"
else
	echo "Get Out!!!!"
fi
