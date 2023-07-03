local M = {}

M.general = {
  n = {
    ["<leader>e"] = { "<cmd> Neotree source=filesystem toggle=true position=left<cr>", "File Tree" },
    ["<leader>gs"] = { "<cmd> Neotree source=git_status toggle=true position=float<cr>", "Git Status"},
    ["<leader>s"] = { "<cmd> SymbolsOutline <cr>", "Symbols Outline"},
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
