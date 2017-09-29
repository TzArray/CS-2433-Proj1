#!/bin/bash
read -ep "Please enter the email: " email
read -ep "Please enter the full name: " fullName
read -ep "Please enter the apartment number:  " aptNumber
read -ep "Please enter the monthly rent amount:  " monthlyRent
read -ep "Please enter next due date: " dueDate
balance="0.00"
file="Data/$email"
if test -f ${file}
    then echo "Error: customer already exists"
        exit 0
    fi
touch ${file}
echo -e "$email $fullName\n$aptNumber $monthlyRent $balance $dueDate" >> $file
./proj1.bash