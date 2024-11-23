local map = vim.keymap.set
local functions = require('core.functions')

-- Terminal mode
map('n', 'T', ':terminal<CR>')
map('t', '<C-[>', '<C-\\><C-n>')

-- Line number
map('n', '<leader>r', functions.toggleRelativeNumber)

-- Indent
map('v', '<', '<gv')
map('v', '>', '>gv')
