local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

-- Colorscheme
Plug('folke/tokyonight.nvim')

Plug('nvim-tree/nvim-web-devicons')
Plug('ryanoasis/vim-devicons')
Plug('3rd/image.nvim')
Plug('jake-stewart/multicursor.nvim')

Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-tree.lua')

-- will should replace nvim-autopaires
Plug('Raimondi/delimitMate')

-- will should replace indent-blankline
Plug('Yggdroot/indentLine')

-- tagbar
Plug('preservim/tagbar')

-- vim-fugitive
Plug('tpope/vim-fugitive')

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
Plug('MeanderingProgrammer/render-markdown.nvim')    -- pip install pylatexenc

vim.call('plug#end')

require('plugin.lualine')
require('plugin.nvim-tree')
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
require('plugin.coc-git')

vim.cmd[[colorscheme tokyonight-moon]]
