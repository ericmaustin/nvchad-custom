require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

local mappings = {
  n = {
    -- ["<leader>e"] = { "<cmd> Neotree source=filesystem toggle=true position=left<cr>", "File Tree" },
    ["<leader>gs"] = { "<cmd> Neotree source=git_status toggle=true position=float<cr>", "Git Status"},
    ["<leader>s"] = { "<cmd> SymbolsOutline <cr>", "Symbols Outline"},
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
    ["<leader>do"] = {"<cmd> DiffViewOpen <cr>", "Diff Open"},
    ["<leader>dh"] = {"<cmd> DiffViewOpen HEAD<cr>", "Diff Open Head"},
    ["<leader>dc"] = {"<cmd> DiffViewClose <cr>", "Diff Close"},
    ["<leader>dt"] = {"<cmd> DiffViewToggleFiles <cr>", "Toggle DiffView"},
    ["<leader>df"] = {"<cmd> DiffViewFocusFiles <cr>", "Focus DiffView"},
    ["<leader>dr"] = {"<cmd> DiffViewRefresh <cr>", "Refresh Diff"},
  },
  i = {
    ["<C-j>"] = { "<ESC>", "Exit Insert Mode" },
    ["<C-k>"] = { "<ESC>", "Exit Insert Mode" },
  },
}

for mode, mode_mappings in pairs(mappings) do
  for key, mapping in pairs(mode_mappings) do
    map(mode, key, mapping[1], { desc = mapping[2] })
  end
end

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
