#!/bin/sh
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install antidote || brew upgrade antidote

ln -sf $DOTFILES/antidote/bundles.txt ~/.zsh_plugins.txt
antidote update
