#!/bin/bash

echo mkdir ~/.backup
if ! test -d ~/.backup; then
    mkdir ~/.backup
fi

# echo cp vimrc ~/.vimrc
# cp ~/.vimrc ~/.backup/
# cp ./vimrc ~/.vimrc

# echo cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/
# cp -r ~/.local/share/nvim/site/autoload/airline ~/.backup/local-share-nvim-site-autoload-airline
# cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/

echo copy coc-snippets    ...
if test -d ~/.backup/ultisnips; then
    rm -r ~/.backup/ultisnips
fi
if test -d ~/.config/coc/ultisnips; then
    mv ~/.config/coc/ultisnips ~/.backup
else
    mkdir ~/.config/coc ~/.config/coc/ultisnipsend
fi
cp -r ./snippets ~/.config/coc/ultisnips

echo copy nvim config
if test -d ~/.backup/nvim; then
    rm -r ~/.backup/nvim
fi
mv ~/.config/nvim ~/.backup
cp -r ./nvim ~/.config/nvim/
