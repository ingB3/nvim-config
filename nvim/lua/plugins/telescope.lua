return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
  -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        -- pickers = {
        --   find_files = {
        --     theme = "dropdown",
        --   },
        -- },
      })
    end,
    keys = {
      {'<leader>t', '<cmd>Telescope<cr>', desc = 'Telescope'},
      {'<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Telescope fine files'},
      {'<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Telescope find grep'},
      {'<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers list'},
      {'<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Telescope find help'},
    },
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_cursor({})
          }
        }
      })
      require('telescope').load_extension('ui-select')
    end
  },
}

