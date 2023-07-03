local null_ls = require "null-ls"

local frmt = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code = null_ls.builtins.code_actions
local comp = null_ls.builtins.completion

local sources = {
  -- comp.spell,
  code.gitsigns,
  frmt.deno_fmt,
  frmt.gofumpt,
  frmt.goimports,
  frmt.golines,
  frmt.black,
  frmt.fixjson,
  frmt.stylua,
  lint.golangci_lint,
  lint.shellcheck,
  frmt.prettierd.with {
    filetypes = { "html", "yaml", "javascript", "typescript"},
  }
}

null_ls.setup {
   debug = true,
   sources = sources,
}
