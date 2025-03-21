DISABLE_AUTO_TITLE="true"
is_git() {
  [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) == true ]]
}

tab_title() {
  local "BETTER_PWD"
  if is_git; then
   GIT_DIRECTORY=$(git rev-parse --show-toplevel)
  fi

  BETTER_PWD=$(PWD)

  if [[ $GIT_DIRECTORY == $BETTER_PWD ]] then
    echo -ne "\e]1;${GIT_DIRECTORY##*/}\a"
  else
    echo -ne "\e]1;(${GIT_DIRECTORY##*/}) ${BETTER_PWD##*/}\a"
  fi  
}

add-zsh-hook precmd tab_title