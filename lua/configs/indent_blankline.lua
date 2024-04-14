-- indent-blanklins
-- https://github.com/lukas-reineke/indent-blankline.nvim

local opts = {
  space_char_blankline = " ",
  show_current_context = true,
}

require("indent_blankline").setup { opts }