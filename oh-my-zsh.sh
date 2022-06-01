################################################################################
# Zsh                                                                          #
################################################################################
Zsh()
{
    echo 'Install ZSH...'
    sudo apt install zsh
    chsh -s $(which zsh)
    echo 'Success installing the ZSH'
    echo
}
################################################################################
# OhMyZsh                                                                      #
################################################################################
OhMyZsh()
{
    echo 'Install Oh My Zsh...'
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    chsh -s $(which zsh)
    source ~/.zshrc
    echo 'Success installing the Oh My Zsh'
    echo
}
################################################################################
# Program                                                                      #
################################################################################
ZSH
OhMyZsh