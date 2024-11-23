# VIM MODE
set fish_vi_key_bindings yes

# USER ALIAS
alias icat="kitten icat"

# NEOVIM PATH
# export PATH="$PATH:/opt/nvim-macos/bin"
alias nvim="/opt/nvim-macos-arm64/bin/nvim"
export VIMPYTHON="/Users/ingbe/.conda/envs/root_env/bin/python3"
export VIMCTAGS="/opt/homebrew/bin/ctags"

# default c++17
alias g++="g++ -std=c++17"

# Obsidian iCloud
alias obsidian="cd /Users/ingbe/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/ingB3"

# >>> oh my fish config >>>
# $ omf theme bobthefish
# set -g theme_display_git yes
# set -g theme_display_git_default_branch yes
# set -g theme_powerline_fonts yes
# set -g theme_nerd_fonts yes
# set -g theme_color_scheme nord
# set -g theme_display_vi yes
# set -g theme_date_format "+%H:%M:%S %m/%d %Y"
# set -g theme_show_exit_status yes
# set -g theme_newline_cursor no
# set -g theme_newline_prompt '$ '

# <<< oh my fish config <<<

# PYTHON LIB PATH
export PATH="$PATH:/Users/ingbe/Library/Python/3.9/bin"

# CERN ROOT thisroot.sh
source /opt/root/bin/thisroot.fish

# HOMEBREW PATH
export PATH="$PATH:/opt/homebrew/bin"

# ctags alias
# alias ctags="`brew --prefix`/bin/ctags"
# macos + homebrew
alias ctags=$(brew --prefix)"/bin/ctags"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
# set -gx MAMBA_EXE "/opt/homebrew/opt/micromamba/bin/micromamba"
# set -gx MAMBA_ROOT_PREFIX "/Users/ingbe/micromamba"
# $MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# alias mamba="micromamba"

# Added by `rbenv init` on 2024년 8월 16일 금요일 06시 02분 21초 KST
status --is-interactive; and rbenv init - --no-rehash fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/miniforge3/bin/conda
    eval /opt/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/miniforge3/etc/fish/conf.d/conda.fish"
        . "/opt/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/miniforge3/bin" $PATH
    end
end

if test -f "/opt/miniforge3/etc/fish/conf.d/mamba.fish"
    source "/opt/miniforge3/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

