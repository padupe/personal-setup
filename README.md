![img](https://github.com/padupe/personal-setup/blob/main/assets/setup.png)
# Personal Setup
> Check the Documentation in pt-BR by clicking 🇧🇷 [here](https://github.com/padupe/personal-setup/blob/main/docs/README-pt-BR.md 'here').

## Index
- [Description](#description)
- [Objective](#objective)
- [Requirements](#requirements)
- [Step by Step](#step-by-step)
    - [Install `git` command](#install-git-command) 

## Description
Installation of the main tools used:
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Beekeper](https://www.beekeeperstudio.io/)
- [DBeaver](https://dbeaver.io/)
- [decK](https://docs.konghq.com/deck/)
    - *decK helps to manage [Kong](https://konghq.com/) configuration declaratively*
- [Discord](https://discord.com/)
- [Emote](https://snapcraft.io/install/emote/ubuntu)
- [Flameshot](https://flameshot.org/)
- [Google Chrome](https://www.google.com/intl/en/chrome/)
- [Docker](https://www.docker.com/)
- [Node.js](https://nodejs.org/en/)
    - *using [nvm](https://github.com/nvm-sh/nvm) package*
- [Notion](https://www.notion.so/)
- [Postman](https://www.postman.com/)
- [Python](https://www.python.org/)
- [Serverless CLI](https://www.serverless.com/framework/docs/providers/aws/cli-reference)
- [Slack](https://slack.com/)
- [Spotify](https://www.spotify.com/)
- [VS Code](https://code.visualstudio.com/)

## Objective
Make the necessary installations for the start of activities in a new environment.

## Requirements
- OS Linux/Ubunt;
- Root User;
- `git` command available (check the installation [here](#install-git-command))

## Step by Step
1. Open a terminal
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd>

2. Navigate through your environment directory to the desired folder

3. Clone this repository

> SSH
```
git clone git@github.com:padupe/personal-setup.git
```

> HTTPS
```
git clone https://github.com/padupe/personal-setup.git
```

4. Open the Project
```
cd personal-setup
```

5. Grant access permission to the binary file `install.sh`
```
sudo chmod +x install.sh 
```

6. Run the command:
```
./install.sh
```

7. Perform confirmations when necessary

8. Done 🥳

### Install `git` command
> Run only if you don't have the git command available in your environment

1. Open a terminal
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd>

2. Run the command:
```
sudo apt install git
```

### Optional Installations
- [Gnome Terminal](https://github.com/padupe/personal-setup/blob/main/gnome-terminal.sh 'Gnome Terminal')

    1 - Grant access permission to the binary file `gnome-terminal.sh`
    ```
    sudo chmod +x gnome-terminal.sh 
    ```

    2 - Run the command:
    ```
    ./gnome-terminal.sh
    ```

    3 - Perform confirmations when necessary

    4 - Done 🚀

- [Oh My Zsh](https://github.com/padupe/personal-setup/blob/main/oh-my-zsh.sh 'Oh My Zsh')

    1 - Grant access permission to the binary file `oh-my-zsh.sh`
    ```
    sudo chmod +x oh-my-zsh.sh 
    ```

    2 - Run the command:
    ```
    ./oh-my-zsh.sh
    ```

    3 - Perform confirmations when necessary

    4 - Done 🚀