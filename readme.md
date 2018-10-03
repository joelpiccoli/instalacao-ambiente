## Configuração do ambiente
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
#### Instalar o PHP 7.2

```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt-get install php7.2-cli php7.2-fpm php-7.2-mysql php7.2-zip php7.2-dom php7.2-mbstring php7.2-curl

```
______
#### Instalar o Composer

1. ***Baixar o Composer***
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
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
source ~/.bashrc
```
______
#### Instalar Nginx

```
sudo -s
nginx=stable
add-apt-repository ppa:nginx/$nginx
apt update
apt install nginx
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
sudo apt-get install -y nodejs
```
______
#### Instalar Yarn
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install yarn
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
npm install --global @vue/cli
```
______

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
alias restart-server="sudo service nginx restart && sudo service php7.2-fpm restart"

```