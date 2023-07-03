local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "rust",
    "go",
    "python",
    "markdown",
    "markdown_inline",
    "yaml",
    "json",
    "make",
    "markdown",
    "json5",
    "jsonc",
    "gomod",
    "gitignore",
    "git_rebase",
    "dockerfile",
    "cpp",
    "cmake",
    "toml",
    "svelte",
    "markdown_inline",
    "todotxt",
    "gowork",
    "bash",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
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
    "dockerfile-language-server"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
