return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      indent = {
        enable = true,
      },
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
        "tsserver",
        "prettier",
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
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
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
        "yaml",
        "json",
        "make",
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
        "todotxt",
        "gowork",
      },
    },
  },
  -- https://github.com/mfussenegger/nvim-dap
  {
    "mfussenegger/nvim-dap",
  },
  -- python debugger
  -- https://github.com/mfussenegger/nvim-dap-python
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require "mfussenegger/nvim-dap"
    end,
  },
  {
    "leoluz/nvim-dap-go",
    config = function()
      require "mfussenegger/nvim-dap"
    end,
  },
  -- rust tools & debuggers
  -- https://github.com/simrat39/rust-tools.nvim
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require "mfussenegger/nvim-dap"
    end,
  },
  -- https://github.com/github/copilot.vim
  {
    "github/copilot.vim",
    lazy = false
  },
  -- telescope extension fo dap
  -- https://github.com/nvim-telescope/telescope-dap.nvim
  {
    "nvim-telescope/telescope-dap.nvim",
    config = function()
      require("telescope").load_extension "dap"
    end,
  },
  -- hop Anywhere
  -- https://github.com/phaazon/hop.nvim
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup()
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      require "configs.symbols_outline"
    end,
  },
  -- diffview
  {
    "sindrets/diffview.nvim",
    lazy = false,
    config = function()
      require "configs.diffvue"
    end,
  },
  -- indent-blankline
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    main = "ibl",
    opts = {}
  }
}
