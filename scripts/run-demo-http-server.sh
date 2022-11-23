#!/bin/bash

echo -e "\n\n \
This script will run the http-server for the 'Travel-Demo-app':\n\n"

###############################
# Ask if they want to continue
###############################
while true; do
  read -r -p 'Do you want to continue? (y/n)' choice
  case "$choice" in
    n|N) echo "Exiting Script" && exit 0;;
    y|Y) break;;
    *)   echo "Response not valid - Please enter 'y' or 'n'";;
  esac
done

cd Travel-Demo-app
http-server -c-1
