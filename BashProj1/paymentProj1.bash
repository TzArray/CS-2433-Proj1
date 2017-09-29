#!/bin/bash
read -ep "Please enter email: " email
read -ep "Please enter payment amount: " payment
file="Data/$email"
if ! test -f ${file}; then
    echo "Error: customer not found"
    exit 0
fi
readarray < $file
IFS=\  read -ra values <<< "${MAPFILE[0]}"
echo "${values[0]} ${values[1]} ${values[2]}" > temp.txt
read -ra values <<< "${MAPFILE[1]}"
test=$((values[2]+payment))
echo "${values[0]} ${values[1]} ${test} ${values[3]}" >> temp.txt
mv temp.txt "$file"
#./proj1.bash