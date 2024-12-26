local map = vim.keymap.set
--
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  -- map('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
  map('n', '?', api.tree.toggle_help, opts('Help'))
end

require("nvim-tree").setup {
  on_attach = my_on_attach,
}

map('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader>fe', '<cmd>NvimTreeFindFile<cr>')
map('n', '<leader>fr', '<cmd>NvimTreeRefresh<cr>')
