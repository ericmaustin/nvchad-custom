local plugins = {
  {
    -- copilot
    { "github/copilot.vim", lazy = false },

    -- DEBUGGERS
    -- debugger adapter
    -- https://github.com/mfussenegger/nvim-dap
    "mfussenegger/nvim-dap",

    -- python debugger
    -- https://github.com/mfussenegger/nvim-dap-python
    {
      "mfussenegger/nvim-dap-python",
      config = function()
        require "mfussenegger/nvim-dap"
      end,
    },

    -- go debugger
    -- https://github.com/leoluz/nvim-dap-go
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

    -- telescope extension fo dap
    -- https://github.com/nvim-telescope/telescope-dap.nvim
    {
      "nvim-telescope/telescope-dap.nvim",
      config = function()
        require("telescope").load_extension "dap"
      end,
    },

    -- treesitter
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "html",
          "css",
          "bash",
          "go",
          "python",
          "css",
          "typescript",
          "javascript",
          "rust",
          "lua",
        },
      },
    },

    -- null-ls
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
  },

  -- hop Anywhere
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup()
    end,
  },
  -- indent-blanklins
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        -- show_current_context_start = true,
      }
    end,
  },

  -- vertcolumn
  {
    "lukas-reineke/virt-column.nvim",
    lazy = false,
    config = function()
      require("virt-column").setup({
        char="︲",
      })
    end
  },
  require "custom.configs.neo-tree",
  require "custom.configs.symbols-outline",
  require "custom.configs.diffview",
}
return plugins
