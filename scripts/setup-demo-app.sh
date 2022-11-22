#!/bin/bash

##################################
# exit functions for different OS
##################################
function exitScriptSuccess()
{
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    return 0
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    exit 0
  else
    exit 0
  fi
}

function exitScriptError()
{
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    return -1
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    exit -1
  else
    exit -1
  fi
}

##################################
# List of commands
# (They will run in order listed)
##################################
commands=(\
  'git clone https://github.com/poorni9r/Travel-Demo-app.git' \
  'wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh' \
  '. ./install.sh' \
  '. ./.nvm/nvm.sh' \
  'nvm install 16.0.0' \
  'npm install -g http-server'  \
  'cd ./Travel-Demo-app' \
  'wget https://github.com/elastic/apm-agent-rum-js/releases/download/%40elastic%2Fapm-rum%405.12.0/elastic-apm-rum.umd.min.js' \
  'http-server -c-1' \
)

echo -e "\n\n \
This script will do the following tasks:\n \
 - Clone the 'Travel-Demo-app' Repo\n \
 - Install 'nvm - node' version manager\n \
 - Activate nvm\n \
 - Use nvm to install the latest version of Node.js\n \
 - Download the RUM Elastic JavaScript file \n \
 - Install and Run the http-server\n \
"

###############################
# Ask if they want to continue
###############################
while true; do
  read -r -p 'Do you want to continue? (y/n)' choice
  case "$choice" in
    n|N) echo "Exiting Script" && exitScriptSuccess;;
    y|Y) break;;
    *)   echo "Response not valid - Please enter 'y' or 'n'";;
  esac
done

#############################################
# Run the commands in the order listed above
# If there is an error with any command, 
# STOP and exit
##############################################
for i in "${commands[@]}"; do
  echo -e "===>>> Running command '${i}'\n"
  ${i}
  if [ $? -ne 0 ]; then
    echo -e "\n\nERROR: command '${i}' FAILED!\n"
    exitScriptError
  fi
done

echo -e "\nScript Complete!\n"
