# Configuração do ambiente
______
#### Atualização do Sistema

```
sudo apt update && sudo apt upgrade
```
______
#### Instalação do Git & Git-flow

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git git-flow
```
______
#### Instalar Oh-My-Zsh

```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Após instalar o Oh-my.zsh instalar o pacote do [ZSH-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions).

*usar o tema [amuse]*

______
#### Instalar o PHP 7.3

```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php7.3-cli php7.3-fpm php7.3-mysql php7.3-zip php7.3-dom php7.3-mbstring php7.3-curl php7.3-gd php7.3-bcmath

```
______
#### Instalar o Composer

1. ***Baixar o Composer***
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```

2. ***Instalar o Composer***
```
sudo mv composer.phar /usr/local/bin/composer
```

3. ***Adicionar no Path***
```
sudo nano ~/.zshrc
```
*adicionar esse trecho ao final do arquivo e salvar*
```
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
```
*atualizar o bash*
```
source ~/.zshrc
```

#### *!! Problemas com timeout do composer !!*
Algumas vezes, é possível que ao tentar baixar um package ou dar update em algum projeto você encare um erro de timeout ao conectar-se com o Packagist. Nesse caso, abra o terminal e execute o seguinte comando:

```
sudo sh -c "echo 'precedence ::ffff:0:0/96 100' >> /etc/gai.conf"
```

Iso fará com que o IPv4 tenha preferência sobre o IPv6. Isso deve resolver o problema de conexão com o Packagist.


------

#### Instalar o Java (arghh...)
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt update
sudo apt install oracle-java8-installer
```

Verifique a instalação do Java

```
sudo apt install oracle-java8-set-default
```

____
#### Dar permissão do kvm no linux

```
sudo apt install qemu-kvm
sudo adduser [username] kvm
```

Para verificar a propriedade do grupo
```
ls -al /dev/kvm
```

Para verificar quais usuários estão no grupo
```
grep kvm /etc/group
```

______
#### Instalar Nginx

```
sudo -s
nginx=stable
add-apt-repository ppa:nginx/$nginx
apt update
apt install nginx
exit
```
*adicionar o nginx ao firewall do linux*

```
sudo ufw enable
sudo ufw allow 'Nginx HTTP'
```
______
#### Instalar o MySQL

```
sudo apt install mysql-server
mysql_secure_installation
```
______
#### Instalar NodeJS

```
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs
```
______
#### Instalar o FiraCode
*Instalar a fonte FiraCode executando o arquivo **[install_firacode.sh](https://1drv.ms/u/s!AtALcZGIACkAoosL9wu5plQhcHw9OQ)** no terminal*

```
sudo bash install_firacode.sh
```
______
#### Instalar o Laravel Installer

```
composer global require "laravel/installer"
```
______

#### Instalar o Vue-CLI
```
npm i -g @vue/cli
```
______

#### Instalar o React-Native CLI

```
npm i -g react-native-cli

```

#### Aliases
*Inserir no final do arquivo .zshrc*

```
# Alias
alias cls="clear"
alias edt="sudo nano $1"
alias upt="sudo apt update"
alias wrp="cd ~/workspace/$1"
alias upg="sudo apt upgrade"
alias inst="sudo apt install $1"
alias avd="cd ~/Android/Sdk/emulator && emulator -avd $1"
alias restart-server="sudo service nginx restart && sudo service php7.3-fpm restart"

# GIT
alias gst="git status"
alias gadd="git add ."
alias gcm="git commit -m $1"
alias gps="git push origin $1"
alias gpl="git pull origin $1"

# PHP
alias art="php artisan $1"
alias mkc="php artisan make:controller $1"
alias mkm="php artisan make:model $1"


```
