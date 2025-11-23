#!/bin/bash

echo ""
echo "This will install 'git' on RHEL or Debian based Linux Distributions"
echo ""
read -p "Press Enter to Continue or Control C to Quit"
echo ""



system_os=$(cat /etc/os-release | grep PRETTY)

os1="Red Hat"
os2="Ubuntu"
os3="Amazon Linux 2023*"
os4="Rocky Linux*"


if [[ "$system_os" == *"$os1"* ]];
then
    echo "This is a Red Hat Distribution"
    echo "Installing Git"
    sudo dnf install git -y

elif [[ "$system_os" == *"$os2"* ]];
then
    echo "This is a Ubuntu Distribution"
    echo "Installing Git"
    sudo apt install git -y

elif [[ "$system_os" == *"$os3"* ]];
then
    echo "This is a AL2023 Distribution"
    echo "Installing Git"
    sudo dnf install git -y

elif [[ "$system_os" == *"$os4"* ]];
then
    echo "This is a Rocky Distribution"
    echo "Installing Git"
    sudo dnf install git -y

else
    echo "This is an unsupported OS"

fi

