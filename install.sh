#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Install AWS CLI, DBeaver, decK, Discord, Docker, Node.js, Postman, Python3.8, Serverless CLI and set it to your system."
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
    sudo apt-get update
    sudo sh -c 'wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb'
    sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
    sudo apt-get install -f
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
    sudo apt-get update
    sudo apt install gdebi-core wget
    sudo sh -c 'wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"'
    sudo gdebi ~/discord.deb
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
    sudo ap-get update
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
    
    # Phase 4
    echo 'Docker | Phase 4'
    sudo apt install docker-ce
    sudo systemctl status docker

    # to run Docker without the need for 'sudo'
    echo 'Enter your username: '
    read username
    sudo usermod -aG docker $username
    su - $username

    echo 'Success installing the Docker and docker-compose'
    echo
}
################################################################################
# Flameshot                                                                    #
################################################################################
Flameshot()
{
    echo 'Install Flameshot...'
    sudo apt-get update
    sudo apt install flameshot
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
    nvm install node
    echo 'Success installing the Node.js'
    echo
}
################################################################################
# Notion                                                                       #
################################################################################
Notion()
{
    echo 'Install Notion...'
    sudo apt-get update
    sudo apt-get install notion
    echo 'Success installing the Notion'
    echo
}
################################################################################
# Postman                                                                      #
################################################################################
Postman()
{
    echo 'Install Postman...'
    sudo apt-get update
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
    sudo apt-get update
    sudo apt install -y slack
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
    sudo apt-get update
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install code
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

    echo 'Install Oh-My-ZSH'
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

    echo 'Install zsh-syntax-highlighting'
    sudo apt install zsh-syntax-highlighting
    echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

    source ~/.zshrc

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
    sudo apt install git
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
Chrome
DBeaver
Deck
Discord
Docker
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