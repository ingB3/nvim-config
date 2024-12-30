local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return({
  s({ trig = 'keymap', name = 'redefine vim api keymapping function' }, {
    t({'local map = vim.keymap.set', ''})
  }),
  s({ trig = 'snippets', name = 'load luasnip api' }, {
    t({
      'local ls = require("luasnip")',
      'local s = ls.snippet',
      'local t = ls.text_node',
      'local i = ls.insert_node',
      'local rep = require("luasnip.extras").rep',
      '',
      'return({',
    }),
    i(0),
    t({'})'})
  })
})
