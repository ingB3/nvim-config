local map = vim.keymap.set

-- navigate chunks of current buffer
map('n', '[g', '<Plug>(coc-git-prevchunk)')
map('n', ']g', '<Plug>(coc-git-nextchunk)')
-- navigate conflicts of current buffer
map('n', '[c', '<Plug>(coc-git-prevconflict)')
map('n', ']c', '<Plug>(coc-git-nextconflict)')
-- show chunk diff at current position
map('n', 'gi', '<Plug>(coc-git-chunkinfo)')
-- show commit contains current position
-- map('n', 'gc', '<Plug>(coc-git-commit)')
map('n', 'gc', ':CocList commits<cr>')
-- create text object for git chunks
map({'o', 'x'}, 'ig', '<Plug>(coc-git-chunk-inner)')
map({'o', 'x'}, 'ag', '<Plug>(coc-git-chunk-outer)')
-- show git status
map('n', 'gs', ':CocList gstatus<cr>')
