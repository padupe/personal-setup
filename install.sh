#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Install AWS CLI, Beekeper, DBeaver, decK, Discord, Docker, Emote, Node.js, Postman, Python3.8, Serverless CLI and set it to your system."
   echo
   echo "Usage: ./install.sh [-h]"
   echo "options:"
   echo "h     Print this Help."
   echo
}
################################################################################
# CLI AWS                                                                      #
################################################################################
AWS()
{
    echo 'Install AWS CLI...'
    sudo apt-get update
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    aws --version
    echo 'Success installing the AWS CLI'
    echo
}
################################################################################
# Beekeper-Studio                                                              #
################################################################################
Beekeper()
{
    echo 'Install Beekeper...'
    sudo apt update
    sudo snap install beekeper-studio
    echo 'Success installing the Beekeper'
    echo
}
################################################################################
# Chrome                                                                       #
################################################################################
Chrome()
{
    echo 'Install Google Chrome...'
    sudo apt-get update
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    echo 'Success installing the Google Chrome'
    echo
}
################################################################################
# DBeaver                                                                      #
################################################################################
DBeaver()
{
    echo 'Install DBeaver...'
    sudo apt update
    snap install dbeaver-ce
    echo 'Success installing the DBeaver'
    echo
}
################################################################################
# Deck                                                                         #
################################################################################
Deck()
{
    echo 'Install decK...'
    sudo apt-get update
    curl -sL https://github.com/kong/deck/releases/download/v1.12.1/deck_1.12.1_linux_amd64.tar.gz -o deck.tar.gz
    tar -xf deck.tar.gz -C /tmp
    sudo cp /tmp/deck /usr/local/bin/
    echo 'Success installing the decK'
    echo
}
################################################################################
# Discord                                                                      #
################################################################################
Discord()
{
    echo 'Install Discord...'
    sudo apt update
    sudo snap install discord
    echo 'Success installing the Discord'
    echo
}
################################################################################
# Docker                                                                       #
################################################################################
Docker()
{
    echo 'Install Docker and docker-compose...'
    echo
    echo 'Docker | Phase 1'
    # Phase 1
    sudo apt update
    sudo apt install apt-transport-https ca-certificates curl software-properties-common

    # Phase 2
    echo 'Docker | Phase 2'
    sudo apt-get update
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable'

    # Phase 3
    echo 'Docker | Phase 3'
    sudo apt update
    apt-cache policy docker-ce
    
    echo 'Success installing the Docker and docker-compose'
    echo
}
################################################################################
# Emote                                                                        #
################################################################################
Emote()
{
    echo 'Install Emote...'
    sudo apt update
    sudo snap install emote
    echo 'Success installing the Emote'
    echo
}
################################################################################
# Flameshot                                                                    #
################################################################################
Flameshot()
{
    echo 'Install Flameshot...'
    sudo apt update
    sudo snap install flameshot
    echo 'Success installing the Flameshot'
    echo
}
################################################################################
# Nodejs                                                                       #
################################################################################
Nodejs()
{
    echo 'Install Node.js with nvm...'
    sudo apt-get update
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    source ~/.profile 
    nvm install --lts
    echo 'Success installing the Node.js'
    echo
}
################################################################################
# Notion                                                                       #
################################################################################
Notion()
{
    echo 'Install Notion...'
    sudo apt update
    sudo snap install notion-snap
    echo 'Success installing the Notion'
    echo
}
################################################################################
# Postman                                                                      #
################################################################################
Postman()
{
    echo 'Install Postman...'
    sudo apt update
    sudo snap install postman
    echo 'Success installing the Postman'
    echo
}
################################################################################
# Python                                                                       #
################################################################################
Python()
{
    echo 'Install Python...'
    sudo apt-get update
    sudo apt install software-properties-common
    sudo apt install python3.8
    sudo apt-get install python-pip
    pip --version
    echo 'Success installing the Python'
    echo
}
################################################################################
# CLI Serverless                                                               #
################################################################################
Serverless()
{
    echo 'Install Serverless CLI ...'
    sudo apt-get update
    npm install -g serverless
    serverless -v
    echo 'Success installing the Serverless CLI'
    echo
}
################################################################################
# Slack                                                                        #
################################################################################
Slack()
{
    echo 'Install Slack...'
    sudo apt update
    sudo snap install slack
    echo 'Success installing the Slack'
    echo
}
################################################################################
# Spotify                                                                      #
################################################################################
Spotify()
{
    echo 'Install Spotify...'
    sudo apt-get update
    sudo snap install spotify
    echo 'Success installing the Spotify'
    echo
}
################################################################################
# VSCode                                                                       #
################################################################################
VSCode()
{
    echo 'Install Visual Studio Code...'
    sudo apt update
    sudo snap install code --clasic
    echo 'Success installing the Visual Studio Code'
    echo
}
################################################################################
# ZSH                                                                     #
################################################################################
ZSH()
{
    echo 'Install ZSH...'
    sudo apt-get update
    sudo apt install zsh -y

    echo 'Verify ZSH version'
    zsh --version
    sudo usermod -s /usr/bin/zsh $(whoami)

    echo 'Success installing the ZSH'
    echo
}
################################################################################
# Requirements                                                                 #
################################################################################
PreInstall()
{
    echo 'Pre-Install'
    echo
    echo 'Update and Upgrade System'
    sudo apt update && sudo apt upgrade
    sudo apt install curl
    echo
}
################################################################################
# Finish                                                                       #
################################################################################
Finish()
{
    echo 'Upgrade'
    echo
    echo 'Update and Upgrade System'
    sudo apt update && sudo apt upgrade
    echo 'Successfully process'
}
################################################################################
# Process the input options. Add options as needed.                            #
################################################################################
# Get the options
while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done
################################################################################
# Program                                                                      #
################################################################################
PreInstall
AWS
Beekeper
Chrome
DBeaver
Deck
Discord
Docker
Emote
Flameshot
Nodejs
Notion
Postman
Python
Serverless
Slack
Spotify
VSCode
ZSH
Finish
