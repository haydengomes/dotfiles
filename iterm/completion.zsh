# sets the iterm tab title to current dir
precmd() {
  echo -ne "\e]1;${PWD##*/}\a"
}
