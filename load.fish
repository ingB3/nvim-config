# fish load.fish

if test -d ~/.backup
else
  echo mkdir ~/.backup
  mkdir ~/.backup
end

# echo cp vimrc ~/.vimrc
# mv ~/.vimrc ~/.backup/
# cp ./.vimrc ~/.vimrc

# echo cp config.fish ~/.config/fish/config.fish
# mv ~/.config/fish/config.fish ~/.backup
# cp config.fish ~/.config/fish/config.fish

echo cp ./nvim ~/.config/nvim
mv ./nvim ~/.backup
cp -r ./nvim ~/.config/nvim
