#!/bin/bash
#version 0.5

    # Useful aliases
    alias h='history|grep'
    alias cd-='cd -' 
    alias cd.='cd ..'
    alias cd..='cd ..'
    alias ms='mysql -uroot -p'
    alias grep='grep --color'

    #Sometimes I'm tired...
    alias eit='exit'
    alias eixt='exit'
    alias exi='exit'
    alias ext='exit'
    alias :q='exit'
    alias :x='exit'

    # Make a new dir and move in it
    function mkcd (){
        mkdir $1 && cd $1
    }

    #git aliases
    alias gitlog="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    alias gittoday="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --since=yesterday"
    alias commit='git commit'
    alias gb='git branch -v'
    alias gc='git commit -m'
    alias gt='git commit -m "typo"'
    alias ga='git add '
    alias gd='git diff'
    alias gr='git rm'
    alias gs='git status'
    alias gss='git status -s'
    alias gpl='git pull origin'
    alias gush='git push origin'
    alias gco='git checkout'
    alias amend='git commit --amend'
    alias checkout='git checkout'

    #apt aliases
    alias install='sudo apt-get install'
    alias remove='sudo apt-get remove'
    alias update='sudo apt-get update'

    #tags for PHP projects in vim
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

    # Function to repeat a command N times, eg repeat 10 <command>
    # https://github.com/djhaus/dotfiles
    repeat()
    {
        n=$1
        shift
        while [ $(( n -= 1 )) -ge 0 ]
        do
            "$@"
        done
    }
