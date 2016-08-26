if test ! $(command -v nvm)
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh PROFILE=~/.localrc
fi

# Autoloading of .nvmrc files
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

echo "FOOBAR"
