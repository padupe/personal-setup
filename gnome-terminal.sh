################################################################################
# GnomeTerminal                                                                #
################################################################################
GnomeTerminal()
{
    echo 'Install Gnome Terminal...'
    sudo apt-get install dconf-cli
    git clone https://github.com/dracula/gnome-terminal
    cd gnome-terminal
    ./install.sh
    echo 'Success installing the Gnome Terminal'
    echo
}
################################################################################
# Program                                                                      #
################################################################################
GnomeTerminal