#!/bin/bash
echo -e "\nEnter one of the following actions or press CTRL-D to exit."
echo "C - create a customer file"
echo "P - accept a customer payment"
echo "F - find customer by apartment number"
read -p "Enter command: " var
case ${var} in
        C)
            ./createProj1.bash
            ;;
        P)
            ./paymentProj1.bash
            ;;
        F)
            ./findProj1.bash
            ;;
        *)
            echo $"Error: invalid action value"
            exit 1
esac
exit 0