#!/bin/bash
source ~/.quartercastle/exports
source ~/.quartercastle/aliases
source ~/.quartercastle/bin/git-prompt

PS1='\n\e[0;35m\u@\h\e[0m: \e[0;37m\w\e[0m \e[0;32m$(__git_ps1 "(%s)")\e[0m\n → '
