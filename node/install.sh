if test ! $(command -v nvm)
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh PROFILE=~/.localrc
fi
