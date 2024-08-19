#!/bin/bash

# Copy dotfiles to home directory
cp ~/dotfiles/.vimrc ~/.vimrc
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.aliases ~/.aliases

# Install vim-plug
mkdir -p ~/.vim/plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins
vim +PlugInstall +qall

# Remove the dotfiles repository folder
rm -rf ~/dotfiles
