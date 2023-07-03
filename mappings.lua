local M = {}

M.general = {
  n = {
    ["<leader>e"] = { "<cmd> Neotree source=filesystem toggle=true position=left<cr>", "File Tree" },
    ["<leader>gs"] = { "<cmd> Neotree source=git_status toggle=true position=float<cr>", "Git Status"},
    ["<leader>s"] = { "<cmd> SymbolsOutline <cr>", "Symbols Outline"},
    ["s"] = { "<cmd> HopChar2MW<cr>", "Hop anywhere" },
    ["<leader>do"] = {"<cmd> DiffViewOpen <cr>", "Diff Open"},
    ["<leader>dh"] = {"<cmd> DiffViewOpen HEAD<cr>", "Diff Open Head"},
    ["<leader>dc"] = {"<cmd> DiffViewClose <cr>", "Diff Close"},
    ["<leader>dt"] = {"<cmd> DiffViewToggleFiles <cr>", "Toggle DiffView"},
    ["<leader>df"] = {"<cmd> DiffViewFocusFiles <cr>", "Focus DiffView"},
    ["<leader>dr"] = {"<cmd> DiffViewRefresh <cr>", "Refresh Diff"},
  },
  v = {
    ["<leader>e"] = { "<cmd> Neotree source=filesystem toggle=true position=left<cr>", "File Tree" },
    ["<leader>gs"] = { "<cmd> Neotree source=git_status toggle=true position=float<cr>", "Git Status"},
    ["s"] = { "<cmd> HopChar2MW<cr>", "Hop anywhere" },
    ["<leader>do"] = {"<cmd> DiffViewOpen <cr>", "Diff Open"},
    ["<leader>dh"] = {"<cmd> DiffViewOpen HEAD<cr>", "Diff Open Head"},
    ["<leader>dc"] = {"<cmd> DiffViewClose <cr>", "Diff Close"},
    ["<leader>dt"] = {"<cmd> DiffViewToggleFiles <cr>", "Toggle DiffView"},
    ["<leader>df"] = {"<cmd> DiffViewFocusFiles <cr>", "Focus DiffView"},
    ["<leader>dr"] = {"<cmd> DiffViewRefresh <cr>", "Refresh Diff"},
  },
}

-- M.ui = {
--   telescope = {
--     style = "bordered"
--   },
-- }

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
