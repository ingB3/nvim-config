return {
  'pixelneo/vim-python-docstring',
  config = function ()
    vim.g.vpd_indent = '    '
    vim.g.python_style = 'numpy'
  end,
  keys = {
    {'<leader>d', '<cmd>Docstring<CR>', desc = 'Python Docstring'},
  },
}

