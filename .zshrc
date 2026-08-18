#!/bin/zsh
source ~/.quartercastle/exports
source ~/.quartercastle/aliases

autoload -U colors && colors

gitStatus() {
  if [ ! -z "$(git describe --tags 2> /dev/null)" ]; then
    echo "$(git rev-parse --abbrev-ref HEAD 2> /dev/null)|$(git describe --tags 2> /dev/null)"
  elif [ ! -z "$(git rev-parse --abbrev-ref HEAD 2> /dev/null)" ]; then
    echo "$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
  fi
}

precmd() {
  aws_environment="%{$fg[yellow]%}${AWS_PROFILE}%{$reset_color%}"

  if [[ $AWS_PROFILE == *"prod"* ]]; then
    aws_environment="%{$fg[red]%}${AWS_PROFILE}%{$reset_color%}"
  fi

  PROMPT=$'\n'"%{$fg[magenta]%}%n@%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} %{$fg[green]%}$(gitStatus)%{$reset_color%} ${aws_environment}"$'\n'" → "
}
