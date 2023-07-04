-- mason

local opts = {
  ensure_installed = {
    -- python
    "pyright",
    "black",
    "debugpy",
    "pylint",

    -- go
    "gopls",
    "golangci-lint",
    "delve",
    "gofumpt",
    "goimports",
    "golines",
    "gotests",
    "gomodifytags",
    "iferr",
    "json-to-struct",
    "revive",

    -- js/ts
    "typescript-language-server",
    "prettierd",
    "eslint_d",

    -- writing / spelling
    "marksman",
    "markdownlint",
    "write-good",
    "misspell",
    "proselint",
    "codespell",

    -- File Formats
    "json-lsp",
    "jsonlint",
    "jq",
    "yaml-language-server",
    "yamllint",
    "yamlfmt",

    -- git
    "commitlint",
    "gitlint",

    -- lua
    "lua-language-server",
    "stylua",

    -- css/html
    "css-lsp",
    "html-lsp",
    "deno",
    "stylelint",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",
    "rustfmt",

    -- shells
    "bash-language-server",
    "beautysh",
    "shfmt",
    "shellcheck",
    "shellharden",

    -- containers
    "dockerfile-language-server",
  },
}

return {
  "williamboman/mason.nvim",
  opts = opts,
}
