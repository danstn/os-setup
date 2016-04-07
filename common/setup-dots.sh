#!/bin/bash
#set -x
echo "---> [SETUP] Setting up dotfiles"

DOTFILES=$HOME/.dotfiles

function unlinkOrMove() {
  local path=$1
  #TODO: check for soft links
  [ -f $path ] && mv -i $path{,.bak}
}

if [ -d $DOTFILES ]
then
  echo "$DOTFILES already initialized"
  #TODO: ask for a re-link?
else
  echo "Fetching dots..."
  git clone git@github.com:dzotokan/dotfiles.git $DOTFILES

  echo "Linking ghci..."
  unlinkOrMove "$HOME/.ghci"
  ln $DOTFILES/ghci $HOME/.ghci

  #TODO: map over a list of files
  echo "Linking zshrc..."
  unlinkOrMove "$HOME/.zshrc"
  ln $DOTFILES/zshrc $HOME/.zshrc

  echo "Linking tmux conf..."
  unlinkOrMove "$HOME/.tmux.conf"
  ln $DOTFILES/tmux.conf $HOME/.tmux.conf

  echo "Linking ctags conf..."
  unlinkOrMove "$HOME/.ctags"
  ln $DOTFILES/ctags $HOME/.ctags
fi



