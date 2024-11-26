vim.g.gitgutter_max_signs = -1
vim.g.gitgutter_show_msg_on_hunk_jumping = 0

local map = vim.keymap.set

map('n', ']h', '<Plug>(GitGutterNextHunk)')
map('n', '[h', '<Plug>(GitGutterPrevHunk)')
