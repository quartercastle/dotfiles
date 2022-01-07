#!/bin/zsh
source ~/.quartercastle/exports
source ~/.quartercastle/aliases
source ~/.quartercastle/bin/git-prompt

autoload -U colors && colors

precmd() {
  PROMPT=$'\n'"%{$fg[magenta]%}%n@%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} %{$fg[green]%}$(__git_ps1 %s)%{$reset_color%}"$'\n'" → "
}

