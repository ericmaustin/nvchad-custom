-- hop Anywhere
-- https://github.com/phaazon/hop.nvim

return {
  "phaazon/hop.nvim",
  lazy = false,
  config = function()
    require("hop").setup()
  end,
}
