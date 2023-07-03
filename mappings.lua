local M = {}

M.general = {
  n = {
    ["s"] = { "<cmd> HopChar2MW<cr>", "Hop anywhere" },
  },
  v = {
    ["s"] = { "<cmd> HopChar2MW<cr>", "Hop anywhere" },
  },
}


M.comment = {
  -- toggle comment in both modes
  n = {
    ["C-/"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },

  },
  v = {
    ["C-/"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

return M
