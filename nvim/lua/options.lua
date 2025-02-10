require "nvchad.options"

-- add yours here!

local o = vim.o
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'

o.foldenable = false
o.cmdheight = 0
-- o.cursorlineopt ='both' -- to enable cursorline!
