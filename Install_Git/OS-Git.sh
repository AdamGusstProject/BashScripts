#!/bin/bash

system_os=$(cat /etc/os-release | grep PRETTY)

os1="Red Hat"
os2="Ubuntu"


if [[ "$system_os" == *"$os1"* ]];

then
    echo "This is a Red Hat Distribution"
    echo "Installing Git"
    sudo dnf install git-all -y

elif [[ "$system_os" == *"$os2"* ]];
    echo "This is a Ubuntu Distribution"

else
    echo "It's not in there"

fi

