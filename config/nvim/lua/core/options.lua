-- vim.api.nvim_command('set runtimepath+=~/.vim,~/.vim/after')
-- vim.api.nvim_command('set packpath+=~/.vim')
vim.cmd('set runtimepath+=~/.vim,~/.vim/after')
vim.cmd('set packpath+=~/.vim')

vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.ignorecase = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.mouse = 'a'
vim.opt.fileencodings = utf8
vim.opt.clipboard = 'unnamed'

vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = '$VIMPYTHON'
