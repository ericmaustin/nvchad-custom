-- indent-blanklins
-- https://github.com/lukas-reineke/indent-blankline.nvim
vim.opt.list = true

local opts = {
  space_char_blankline = " ",
  show_current_context = true,
}

return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = false,
  config = function()
    require("indent_blankline").setup { opts }
  end,
}
