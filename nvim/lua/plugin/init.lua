local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

-- vim-airline
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('enricobacis/vim-airline-clock')
require('plugin.vim-airline')

-- will should replace nvim-tree
Plug('scrooloose/nerdtree')
require('plugin.nerdtree')

-- will should replace nvim-autopaires
Plug('Raimondi/delimitMate')
require('plugin.delimitmate')

Plug('ryanoasis/vim-devicons')

-- tagbar
Plug('preservim/tagbar')
require('plugin.tagbar')

-- will should replace indent-blankline
Plug('Yggdroot/indentLine')
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
Plug('nvim-lua/plenary.nvim')    -- For nvim-telescope
Plug('nvim-telescope/telescope.nvim', { ['branch'] = '0.1.x' })     -- or { ['tag'] = '0.1.8' })
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- For nvim-telescope
Plug('folke/tokyonight.nvim')
Plug('preservim/nerdcommenter')
Plug('mistricky/codesnap.nvim', { ['do'] = 'make' })
Plug('pixelneo/vim-python-docstring')
Plug('echasnovski/mini.nvim', { ['branch'] = 'stable' })    -- For render-markdown
Plug('nvim-tree/nvim-web-devicons')  -- For render-markdown
Plug('MeanderingProgrammer/render-markdown.nvim')    -- pip install pylatexenc
Plug('3rd/image.nvim')
Plug('jake-stewart/multicursor.nvim')
Plug('airblade/vim-gitgutter')

vim.call('plug#end')

require('plugin.codesnap')
require('plugin.image')
require('plugin.multicursor')
require('plugin.nvim-treesitter')

vim.cmd[[colorscheme tokyonight-moon]]
