![img](https://github.com/padupe/personal-setup/blob/main/assets/setup.png)
# Setup Pessoal

## Índice
- [Descrição](#descricao)
- [Objetivo](#objetivo)
- [Requisitos](#requisitos)
- [Passo a Passo](#passo-a-passo)

## Descrição
Instalação das principais ferramentas utilizadas pelo time de SRE:
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Beekeper](https://www.beekeeperstudio.io/)
- [DBeaver](https://dbeaver.io/)
- [decK](https://docs.konghq.com/deck/)
    - *O decK ajuda a gerenciar a configuração do [Kong](https://konghq.com/) de maneira declarativa*
- [Discord](https://discord.com/)
- [Docker](https://www.docker.com/)
- [Emote](https://snapcraft.io/install/emote/ubuntu)
- [Flameshot](https://flameshot.org/)
- [Google Chrome](https://www.google.com/intl/pt-BR/chrome/)
- [Node.js](https://nodejs.org/en/)
    - *usando o pacote [nvm](https://github.com/nvm-sh/nvm)*
- [Notion](https://www.notion.so/)
- [Postman](https://www.postman.com/)
- [Python](https://www.python.org/)
- [Serverless CLI](https://www.serverless.com/framework/docs/providers/aws/cli-reference)
- [Slack](https://slack.com/)
- [Spotify](https://www.spotify.com/)
- [VS Code](https://code.visualstudio.com/)

## Objetivo
Efetuar as instalações necessárias no ambiente dos novos colaboradores do time de SRE da MadeiraMadeira.

## Requisitos
- SO Linux/Ubunt;
- Usuário "Raiz";

## Passo a Passo
1. Abra um Terminal
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd>

2. Navegue pelo diretório do seu ambiente até a pasta desejada

3. Clone este repositório

> SSH
```
git clone git@github.com:padupe/personal-setup.git
```

> HTTPS
```
git clone https://github.com/padupe/personal-setup.git
```

4. Abra o Projeto
```
cd personal-setup
```

5. Conceda permissão de acesso ao arquivo binário `install.sh`
```
sudo chmod +x install.sh 
```

6. Rode o comando:
```
./install.sh
```

7. Realize as confirmações quando necessário

8. Pronto :partying_face:

### Instalação do comando `git`
1. Abra um Terminal
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>t</kbd>

2. Rode o comando:
```
sudo apt install git
```

### Instalações Opcionais
- [Gnome Terminal](https://github.com/padupe/personal-setup/blob/main/gnome-terminal.sh 'Gnome Terminal')

    1 - Conceda permissão de acesso ao arquivo binário `gnome-terminal.sh`
    ```
    sudo chmod +x gnome-terminal.sh 
    ```

    2 - Rode o comando::
    ```
    ./gnome-terminal.sh
    ```

    3 - Realize as confirmações quando necessário

    4 - Done 🚀

- [Oh My Zsh](https://github.com/padupe/personal-setup/blob/main/oh-my-zsh.sh 'Oh My Zsh')

    1 - Conceda permissão de acesso ao arquivo binário `oh-my-zsh.sh`
    ```
    sudo chmod +x oh-my-zsh.sh 
    ```

    2 - Rode o comando::
    ```
    ./oh-my-zsh.sh
    ```

    3 - Realize as confirmações quando necessário

    4 - Done 🚀