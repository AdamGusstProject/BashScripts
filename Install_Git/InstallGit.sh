#!/bin/bash

echo "This script will install Git on your system."

while true
do
    echo "1. Rocky"
    echo "2. RedHat"
    echo "3. Ubuntu"
    echo "4. Exit"
    read -p "Enter your choice:  "  choice


    case $choice in

        1) echo "installing Git for Rocky..."
           #sudo dnf install git-all -y
           ;;
        2) echo "installing Git for RedHat..."
           #sudo dnf install git-all -y
           ;;
        3) echo "installing Git for Ubuntu..."
           #sudo apt install git-all -y
           ;;
        4) break
           ;;
        *) continue
           ;;

    esac
done
