#!/bin/bash

echo "You will need the repo URL with your personal github username and personal access token"
echo ""
echo "Example  -  git clone https://<USERNAME>:<TOKEN>@github.com/<REPO-OWNER>/<REPO-NAME>.git"
echo ""
read -p "Press Enter to Continue"
echo ""

while true
do
    echo "1. What repo would you like to pull down? (Enter URL with Account Info) "      
    echo "2. Exit"
    read -p "Enter your choice: "  choice

    case $choice in
        1) read -p "Enter your repo info, and press enter to continue: " repo_url
           echo ""
           echo "Clone Download Starting..."
           echo ""
           git clone $repo_url
           echo ""
           echo "Clone Complete"
           echo ""
           ;;
        2) break
           ;;
        *) continue
           ;;

    esac
done
