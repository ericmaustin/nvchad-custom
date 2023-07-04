-- treesitter

local opts = {
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
  },
  indent = {
    enabled = true
  },
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = opts
}
