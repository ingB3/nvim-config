# fish load.fish

echo mkdir ~/.backup
if test -d ~/.backup
else
    mkdir ~/.backup
end

echo cp vimrc ~/.vimrc
mv ~/.vimrc ~/.backup/
cp ./.vimrc ~/.vimrc

echo cp config.fish ~/.config/fish/config.fish
mv ~/.config/fish/config.fish ~/.backup
cp config.fish ~/.config/fish/config.fish

echo cp ./nvim ~/.config/nvim
mv ./nvim ~/.backup
cp -r ./nvim ~/.config/nvim

echo cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/
mv -r ~/.local/share/nvim/site/autoload/airline ~/.backup/local-share-nvim-site-autoload-airline
cp -r ./local/share/nvim/site/autoload/airline/themes ~/.local/share/nvim/site/autoload/airline/
