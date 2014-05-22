#!/bin/bash
sudo apt-get update && sudo apt-get install python-dev
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cd ~/.vim/bundle/YouCompleteMe
./install.sh
vim +BundleInstall +qall
