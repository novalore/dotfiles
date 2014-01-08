#!/bin/bash
#version 0.3

# Alias utili
alias h='history'
alias cd..="cd .."
alias ms='mysql -uroot -p'

# Crea nuova directory e spostatici
function mkcd (){
        mkdir $1 && cd $1
    }
     
    #git aliases
    alias gitlog="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    alias gittoday="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --since=yesterday"
    alias commit="git commit"
    alias gc='git commit -m'
    alias ga='git add '
    alias gd='git diff'
    alias gr='git rm'
    alias gs='git status'
    alias gss='git status -s'
    alias gull='git pull origin'
    alias gush='git push origin'
    alias gco='git checkout'
    alias checkout='git checkout'
     
    #apt aliases
    alias install='sudo apt-get install'
    alias remove='sudo apt-get remove'
    alias update='sudo apt-get update'

    alias ctags-php='ctags-exuberant -f tags \
    -h ".php" -R \
    --PHP-kinds=cfiv \
    --totals=yes \
    --tag-relative=yes \
    --PHP-kinds=cfiv \
    --regex-PHP="/(abstract)?\s+class\s+([^ ]+)/\2/c/" \
    --regex-PHP="/interface\s+([^ ]+)/\1/i/" \
    --exclude="*.js" \
    --exclude=".svn" \
    --exclude=".git"'
