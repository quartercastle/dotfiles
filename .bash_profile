#!/bin/bash
source ~/.quartercastle/exports
source ~/.quartercastle/aliases
source ~/.quartercastle/bin/git-prompt

PS1='\n\e[0;34mkvartborg\e[0m: \e[1;33m\w\e[0m \e[0;32m$(__git_ps1 " (%s)")\e[0m\n → '
