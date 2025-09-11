#!/bin/zsh
source ~/.quartercastle/exports
source ~/.quartercastle/aliases
source ~/.quartercastle/bin/git-prompt

autoload -U colors && colors

precmd() {
  aws_environment="%{$fg[yellow]%}${AWS_PROFILE}%{$reset_color%}"

  if [[ $AWS_PROFILE == *"prod"* ]]; then
    aws_environment="%{$fg[red]%}${AWS_PROFILE}%{$reset_color%}"
  fi

  PROMPT=$'\n'"%{$fg[magenta]%}%n@%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} %{$fg[green]%}$(__git_ps1 %s)%{$reset_color%} ${aws_environment}"$'\n'" → "
}
