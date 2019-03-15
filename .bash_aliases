# General
alias cls="clear"
alias edt="sudo nano $1"
alias inst="sudo apt install $1"
alias upt="sudo apt update"
alias upg="sudo apt upgrade"
alias wrp="cd ~/workspace"
alias avd="cd ~/Android/Sdk/emulator && emulator -avd $1"
alias zshconf="edt ~/.zshrc"
alias zshrf="source ~/.zshrc"
alias restart-server="sudo service nginx restart && sudo service php7.3-fpm restart"

#NPM
alias nra="react-native run-android"
alias ni="npm install $1"
alias nup="npm update"
alias ncls="npm cache clear --force"

# GIT
alias gst="git status"
alias gadd="git add ."
alias gcm="git commit -m $1"
alias gps="git push origin $1"
alias gpl="git pull origin $1"
alias gth="git stash $1"

# PHP
alias php-serve="php -S localhost:8000 $1"
alias art="php artisan $1"
alias mkc="php artisan make:controller $1"
alias mkm="php artisan make:model $1"
