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
baixe os dois arquivos, **.bash_aliases** e **.bash_funcions*** na raiz do seu usuário e importe os dois dentro de .zshrc bem no final do arquivo.
```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
```
Assim os alias e functions estarão disponíveis para o sistema.

___

**créditos à [Aaroh Mankad](https://gist.github.com/aarohmankad) pelas [functions](https://gist.github.com/aarohmankad/f17876d7550ff9dd1891727160b0f248)!*