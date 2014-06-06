#!/bin/bash
cd
sudo apt-get update && sudo apt-get install python-dev cmake build-essential
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.sh

ln -nfs ~/.dot_files/.vimrc ~/.vimrc
ln -nfs ~/.dot_files/.bashrc ~/.bashrc 
. ~/.bashrc
