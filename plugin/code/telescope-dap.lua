-- telescope extension fo dap
-- https://github.com/nvim-telescope/telescope-dap.nvim

return {
  "nvim-telescope/telescope-dap.nvim",
  config = function()
    require("telescope").load_extension "dap"
  end,
}
