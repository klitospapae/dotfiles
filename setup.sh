#!/bin/bash

mkdir ~/.config/nvim
ln -s ~/dotfiles/init.vim ~/.config/nvim/
ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.Xresources ~/
ln -s ~/dotfiles/.jackdrc ~/
mkdir ~/.config/spotifyd
cp ~/dotfiles/spotifyd.conf ~/.config/spotifyd/
echo "Please add username and password for spotifyd"
