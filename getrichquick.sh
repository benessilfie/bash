#!/bin/bash

echo "What is your name? "

read name

sleep 1

echo "How old are you? "

read age

sleep 1

getrich=$(( ($RANDOM % 15 ) + $age ))

echo "Hey $name, you will become a millionaire when you are $getrich years old "
