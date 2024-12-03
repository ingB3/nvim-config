#!/opt/homebrew/bin/fish

# echo copy .vimrc    ...
# cp ~/.vimrc ./.vimrc

# echo copy .config/fish/config.fish    ...
# cp ~/.config/fish/config.fish ./config.fish

echo copy nvim config    ...
if test -d ./nvim
    rm -r ./nvim
end
cp -r ~/.config/nvim ./nvim

echo copy coc-snippets    ...
if test -d ./snippets
    rm -r ./snippets
end
mkdir ./snippets
cp -r ~/.config/coc/ultisnips ./snippets
