#!/bin/bash

echo mkdir ~/.backup
mkdir ~/.backup

echo cp vimrc ~/.vimrc
cp ~/.vimrc ~/.backup/
cp ./vimrc ~/.vimrc

echo cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/
cp -r ~/.local/share/nvim/site/autoload/airline ~/.backup/local-share-nvim-site-autoload-airline
cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/

echo cp ./config/nvim/* ~/.config/nvim/
cp -r ~/.config/nvim ~/.backup
cp ./config/nvim/* ~/.config/nvim/

