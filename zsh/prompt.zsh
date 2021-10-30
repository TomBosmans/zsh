#!/usr/bin/env zsh

working_dir() {
  echo "%F{blue}%~%f"
}

git_state() {
  local BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

  if [ ! -z $BRANCH ]; then
    echo -n "%F{green}$BRANCH%f"

    if [ ! -z "$(git status --short)" ]; then
      echo " %F{red}✗%f"
    else
      echo " %F{green}✔%f"
    fi
  fi
}

precmd() { precmd() { print "" } } # new line after enter
setopt prompt_subst
PROMPT='%B$(working_dir)$(git_state)%b
▶ '
