## Configuração do ambiente
___

#### Atualização do Sistema

```
sudo apt update && sudo apt upgrade
```

#### Instalação do Git

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
```

#### Instalar Oh-My-Zsh

```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)
```

#### Instalar o PHP 7.x

```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt-get install php7.x-cli php7.x-fpm php-7.x-mysql php7.x-zip php7.x-dom php7.x-mbstring php7.x-curl

```

#### Instalar o Composer

1. ***Baixar o Composer***
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```

2. ****Instalar o Composer***
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

#### Instalar o MySQL

```
sudo apt install mysql-server
mysql_secure_installation
```

#### Instalar NodeJS

```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt update
sudo apt-get install -y nodejs
```

#### Instalar Yarn
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install yarn
```

##### Instalar o FiraCode
*Instalar a fonte FiraCode executando o arquivo **[install_firacode.sh](https://1drv.ms/u/s!AtALcZGIACkAoosL9wu5plQhcHw9OQ)** no terminal*

```
sudo bash install_firacode.sh
```