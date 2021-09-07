# Configuração do ambiente
Passo a passo rápido de como ter um ambiente com Git, PHP, MySQL, NodeJS e Nginx funcionando no Linux.


- [Atualização do Sistema](#atualização-do-sistema)
- [Instalação do Git](#instalação-do-git)
- [Instalar Oh-My-Zsh](#instalar-oh-my-zsh)
- [Instalar o PHP 8.0](#instalar-o-php-8)
- [Instalar o Composer](#instalar-o-composer)
- [Instalar Nginx](#instalar-nginx)
- [Instalar o MySQL](#instalar-o-mysql)
- [Instalar NodeJS](#instalar-nodejs)
- [Aliases](#aliases)

______
## Atualização do Sistema

```
sudo apt update && sudo apt upgrade
```
______
## Instalação do Git

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
```

**Se desejar instalar o [git-flow](https://danielkummer.github.io/git-flow-cheatsheet/index.pt_BR.html)**

```
sudo apt install -y git git-flow
```
______
## Instalar Oh My Zsh

```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Após instalar o Oh-my.zsh instalar o pacote do [ZSH-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions).

______
## Instalar o PHP 8

```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php8.0-cli php8.0-fpm php8.0-mysql php8.0-zip php8.0-dom php8.0-mbstring php8.0-curl php8.0-gd php8.0-bcmath php8.0-redis

```
______
## Instalar o Composer

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

### *!! Problemas com timeout do composer !!*
Algumas vezes, é possível que ao tentar baixar um package ou dar update em algum projeto você encare um erro de timeout ao conectar-se com o Packagist. Nesse caso, abra o terminal e execute o seguinte comando:

```
sudo sh -c "echo 'precedence ::ffff:0:0/96 100' >> /etc/gai.conf"
```

Iso fará com que o IPv4 tenha preferência sobre o IPv6. Isso deve resolver o problema de conexão com o Packagist.

______
## Instalar Nginx

```
sudo add-apt-repository ppa:nginx/stable
sudo apt update
sudo apt install -y nginx
```
*adicionar o nginx ao firewall do linux*

```
sudo ufw enable
sudo ufw allow 'Nginx HTTP'
```
______
## Instalar o MySQL

```
sudo apt install mysql-server
```

Após isso execute
```
mysql_secure_installation
```
Se for pedido o password você pode ter que alterar a forma de autenticação do root, se for o caso, siga os proximos passos:


```
sudo mysql -u root
```

Execute o seguinte:

```
mysql> USE mysql;
mysql> UPDATE user SET plugin='mysql_native_password' WHERE User='root';
mysql> FLUSH PRIVILEGES;
mysql> exit;
```

Atualize o MySQL

```
sudo service mysql restart
```

Após execute novamente o comando `mysql_secure_installation` e deve funcionar ok.


Fonte:
[ERROR 1698 (28000): Access denied for user 'root'@'localhost'](https://stackoverflow.com/a/42742610)

______

## Instalar NodeJS

```
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs
```

Para corrigir o problema de permissão ao instalar pacotes globais com o npm siga as informações nesse link:
> [Resolving eacces permissions](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)

______

## Aliases
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

**créditos à [Aaroh Mankad](https://github.com/aarohmankad) pelas [functions](https://gist.github.com/aarohmankad/f17876d7550ff9dd1891727160b0f248)!*
