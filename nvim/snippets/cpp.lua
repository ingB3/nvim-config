local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return({
  s({ trig = 'main', name = 'c++ main function' }, {
    t({'int main(int argc, char *argv[]) {', '\treturn 0;', '}'})
  })
})
