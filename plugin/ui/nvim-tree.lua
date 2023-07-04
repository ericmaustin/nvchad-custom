-- nvim tree
-- https://github.com/nvim-tree/nvim-tree.lua

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    git = {
      enable = true,
    },
    view = {
      signcolumn = "auto",
    },
    renderer = {
      indent_markers = {
        enable = true,
      },
      highlight_git = true,
      icons = {
        show = {
          git = true,
        },
        git_placement = "before",
        glyphs = {
          modified = "",
          git = {
            unstaged = "󰃹",
            staged = "󰄬",
            unmerged = "",
            renamed = "󰁔",
            untracked = "",
            deleted = "󰧧",
            ignored = "◌",
          },
          folder = {
            arrow_closed = "",
            arrow_open = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
        },
      },
    },
  },
}
