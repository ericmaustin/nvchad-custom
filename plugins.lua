local plugpath = "custom.plugin."

local plugins = {
  -- ai tools
  require(plugpath .. "ai.copilot"),

  -- code / LSPs / DSPs
  require(plugpath .. "code.nvim-dap"),
  require(plugpath .. "code.nvim-dap-go"),
  require(plugpath .. "code.nvim-dap-python"),
  require(plugpath .. "code.rust-tools"),
  require(plugpath .. "code.telescope-dap"),
  require(plugpath .. "code.nvim-lspconfig"),

  -- ui improvements
  require(plugpath .. "ui.deadcolumn"),
  -- require(plugpath .. "ui.neo-tree"),
  require(plugpath .. "ui.nvim-tree"),
  require(plugpath .. "ui.hop"),
  require(plugpath .. "ui.nvim-treesitter"),
  require(plugpath .. "ui.noice"),
  require(plugpath .. "ui.symbols-outline"),
  require(plugpath .. "ui.indent-blankline"),
  require(plugpath .. "ui.diffview"),

  -- utils
  -- require(plugpath .. "util.null-ls"),
  require(plugpath .. "util.mason"),
}
return plugins
