local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

-- Colorscheme
Plug('folke/tokyonight.nvim')

Plug('ryanoasis/vim-devicons')
Plug('3rd/image.nvim')
Plug('jake-stewart/multicursor.nvim')

-- vim-airline
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('enricobacis/vim-airline-clock')

-- will should replace nvim-tree
Plug('scrooloose/nerdtree')

-- vim-gitgutter
Plug('airblade/vim-gitgutter')

-- will should replace nvim-autopaires
Plug('Raimondi/delimitMate')

-- will should replace indent-blankline
Plug('Yggdroot/indentLine')

-- tagbar
Plug('preservim/tagbar')

-- LSP
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

-- Telescope.nvim
Plug('nvim-lua/plenary.nvim')    -- For nvim-telescope
Plug('nvim-telescope/telescope.nvim', { ['branch'] = '0.1.x' })     -- or { ['tag'] = '0.1.8' })

-- nvim-treesitter
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

Plug('preservim/nerdcommenter')
Plug('mistricky/codesnap.nvim', { ['do'] = 'make' })
Plug('pixelneo/vim-python-docstring')

-- render-markdown.nvim
Plug('echasnovski/mini.nvim', { ['branch'] = 'stable' })    -- For render-markdown
Plug('nvim-tree/nvim-web-devicons')  -- For render-markdown
Plug('MeanderingProgrammer/render-markdown.nvim')    -- pip install pylatexenc

vim.call('plug#end')

require('plugin.vim-airline')
require('plugin.nerdtree')
require('plugin.vim-gitgutter')
require('plugin.delimitmate')
require('plugin.tagbar')
require('plugin.indentLine')
require('plugin.telescope')
require('plugin.nvim-treesitter')
require('plugin.nerdcommenter')
require('plugin.codesnap')
require('plugin.image')
require('plugin.multicursor')
require('plugin.vim-python-doc')
require('plugin.coc')

vim.cmd[[colorscheme tokyonight-moon]]
