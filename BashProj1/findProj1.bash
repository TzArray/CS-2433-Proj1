#!/bin/bash
read -ep "Enter apartment number (format APT-XX): " aptNum
if test=$(grep -lr "$aptNum" Data); then
    readarray < $test
    IFS=\  read -ra values <<< "${MAPFILE[0]}"
    echo "Email: ${values[0]}"
    echo -n "Name: ${values[1]}"
    echo " ${values[2]}"
    read -ra values <<< "${MAPFILE[1]}"
    echo "Apt: ${values[0]}"
    echo "Balance: ${values[1]}"
    echo "Rent Amt: ${values[2]}"
    echo "Due Date: ${values[3]}"
    ./proj1.bash
fi
echo "Error: apartment number not found"
exit 0