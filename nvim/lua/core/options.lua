-- path
vim.opt.runtimepath:append('~/.vim,~/.vim/after')
vim.opt.packpath:append('~/.vim')

-- tab/indent
vim.opt.showtabline = 2
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.smartindent = false
vim.opt.wrap = false

-- ui
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = false
vim.opt.termguicolors = true
vim.opt.signcolumn = 'auto'
vim.opt.updatetime = 100

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- search
vim.opt.incsearch = true
vim.opt.ignorecase = false
vim.opt.smartcase = false

-- backup
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.fileencodings:append('utf-8,euc-kr')

-- io
vim.opt.autoread = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamed'

vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = '$VIMPYTHON'

-- tex flavor
vim.g.tex_flavor = 'latex'