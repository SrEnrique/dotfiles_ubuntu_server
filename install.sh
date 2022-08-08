#!/bin/bash

#install dependences

echo "Installing dependences"
sudo apt install -y neovim git tmux curl wget 



# vim plugins
echo "Configure vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
PWD=$(pwd)
ln -s $PWD/vim/vimrc ~/.vimrc
vim +PlugInstall +qall



# tmux

echo "Configure tmux"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/


ln -s $PWD/tmux/tmux.conf ~/.tmux
echo "[ -n \"\$TMUX\" ] && export TERM=screen-256color"  >> ~/.bashrc


