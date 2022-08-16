#!/bin/bash

#install dependences

echo "Installing dependences"
sudo apt install -y neovim vim git tmux curl wget 1&>/dev/null



# vim plugins
echo "Configure vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
PWD=$(pwd)
ln -s $PWD/vim/vimrc ~/.vimrc
vim +PlugInstall +qall

# Config nvim

echo "Configure nvim"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim

ln -s $PWD/vim/vimrc ~/.config/nvim/init.vim
nvim +PlugInstall +qall


# tmux
echo "Configure tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/


ln -s $PWD/tmux/tmux.conf ~/.tmux
echo "[ -n \"\$TMUX\" ] && export TERM=screen-256color"  >> ~/.bashrc


