local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return({
  s({ trig = 'main', name = 'main entry point, main check' }, {
    t({'def main() -> None:', '\t'}),
    i(0),
    t({'', '', 'if __name__ == \'__main__\':', '\tmain()'})
  }),
  s({ trig = 'numpy', name = 'import numpy' }, {
    t({'import numpy as np', ''})
  }),
  s({ trig = 'root', name = "import pyroot" }, {
    t({'import numpy as np', 'import ROOT as rt', ''})
  }),
})
