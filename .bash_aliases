# General
alias cls="clear"
alias clsa="clear && ls -la"
alias edt="sudo nano $1"
alias inst="sudo apt install $1"
alias upt="sudo apt update"
alias upg="sudo apt upgrade"
alias wrp="cd ~/workspace"
alias zshconf="edt ~/.zshrc"
alias zshrf="source ~/.zshrc"
alias dl="rm -rf $1"

#NPM
alias ni="npm install $1"
alias nup="npm update"
alias ncls="npm cache clear --force"
alias nru="npm run $1"

# GIT
alias gst="git status"
alias gadd="git add ."
alias gcm="git commit -m $1"
alias gps="git push origin $1"
alias gpl="git pull origin $1"
alias gth="git stash $1"

# PHP
alias art="php artisan $1"

# DOCKER
alias dc="docker-compose $1"
alias dcu="dc up -d"
alias dcd="dc down"
alias dps="docker ps"
alias dex="docker exec $1"
