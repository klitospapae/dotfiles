#!/bin/bash

mkdir ~/.config/nvim
ln -fs ~/dotfiles/init.vim ~/.config/nvim/
ln -fs ~/dotfiles/.zshrc ~/
ln -fs ~/dotfiles/.Xresources ~/
ln -fs ~/dotfiles/.jackdrc ~/
mkdir ~/.config/spotifyd
cp ~/dotfiles/spotifyd.conf ~/.config/spotifyd/
ln -fs ~/dotfiles/i3config ~/.config/i3/config
mkdir ~/.config/i3status
ln -fs ~/dotfiles/i3status ~/.config/i3status/config
mkdir ~/.config/i3blocks
ln -fs ~/dotfiles/i3blocks ~/.config/i3blocks/config

echo "Please add username and password for spotifyd"
# ~/.xinitrc
# i3 conf
# i3 status conf
