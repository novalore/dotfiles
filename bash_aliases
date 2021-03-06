#!/bin/bash
#version 0.6

    # Useful aliases
    alias h='history|grep'
    alias cd-='cd -' 
    alias cd.='cd ..'
    alias cd..='cd ..'
    alias ms='mysql -uroot -p'
    alias grep='grep --color'
    alias syslog='journalctl'
    alias wget='wget -c'
    alias top='htop'
    alias m='mutt'
    alias ssh='TERM=xterm-256color ssh'

    #No more unreadable query results!
    #https://coderwall.com/p/4gdrig
    alias mysql='mysql --auto-vertical-output'

    #Sometimes I'm tired...
    alias eit='exit'
    alias eixt='exit'
    alias exi='exit'
    alias ext='exit'
    alias :q='exit'
    alias :x='exit'
    alias su-='su -'

    # Make a new dir and move in it
    function mkcd (){
        mkdir $1 && cd $1
    }

    #git aliases
    alias gitlog="git log --graph --stat --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
    alias gittoday="git log --graph --stat --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all --since=yesterday"
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

    # Vagrant aliases
    alias vup="vagrant up"
    alias vupl="vagrant up 2>&1 | tee vagrant.log"
    alias vh="vagrant halt"
    alias vs="vagrant suspend"
    alias vr="vagrant resume"
    alias vrl="vagrant reload"
    alias vssh="vagrant ssh"
    alias vst="vagrant status"
    alias vp="vagrant provision"
    alias vdstr="vagrant destroy"
    # requires vagrant-list plugin
    alias vl="vagrant list"
    # requires vagrant-hostmanager plugin
    alias vhst="vagrant hostmanager"

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
