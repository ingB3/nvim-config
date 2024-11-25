vim.g.vpd_indent = '    '
vim.g.python_style = 'numpy'

local map = vim.keymap.set

map('n', '<leader>d', '<cmd>Docstring<CR>', { silent = true })
