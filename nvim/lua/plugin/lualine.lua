local tokyonight_moon = require('plugin.lualine.theme.tokyonight-moon')

local function bufferFormat(buffer, context)
    -- local number2superscript = require('core.functions').number2superscript
    -- return buffer .. number2superscript(context.bufnr)
    return buffer .. '｜' .. context.bufnr
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = tokyonight_moon,
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    section_separators = '', component_separators = '',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  always_show_tabline = true,
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    -- lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'location'},
    lualine_z = {'progress'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'tabs'},
    lualine_b = {
        { 'buffers', fmt = bufferFormat } },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {"os.date('%H:%M:%S')"}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
