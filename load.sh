#!/bin/bash

if ! test -d ~/.backup; then
  echo mkdir ~/.backup
  mkdir ~/.backup
fi

# echo cp vimrc ~/.vimrc
# cp ~/.vimrc ~/.backup/
# cp ./vimrc ~/.vimrc

# echo cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/
# cp -r ~/.local/share/nvim/site/autoload/airline ~/.backup/local-share-nvim-site-autoload-airline
# cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/

echo copy nvim config
if test -d ~/.backup/nvim; then
  rm -r ~/.backup/nvim
fi
mv ~/.config/nvim ~/.backup
cp -r ./nvim ~/.config/nvim/
