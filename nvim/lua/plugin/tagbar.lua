local map = vim.keymap.set

map('n', '<F12>', ':TagbarToggle<CR>', { silent = true })
vim.g.tagbar_width = 40
vim.g.tagbar_ctags_bin = '$VIMCTAGS'
