return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        ignored = true,
        sources = {
          files = {
            hidden = true, -- Show hidden/dotfiles
          },
          grep = {
            hidden = true, -- Also search in hidden files
          },
        },
      },
    },
  },
}
