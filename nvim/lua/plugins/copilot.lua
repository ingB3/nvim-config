local map = vim.keymap.set
map('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<C-]>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-[]>', '<Plug>(copilot-previous)')
vim.g.copilot_no_tab_map = true

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = 'solarized',
  -- group = ...,
  callback = function()
    vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
      fg = '#555555',
      ctermfg = 8,
      force = true
    })
  end
})

return {
  "github/copilot.vim",
}
