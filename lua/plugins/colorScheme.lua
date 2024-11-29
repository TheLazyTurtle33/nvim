return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
  {
    "folke/tokyonight.nvim"
  },
  {
    "rebelot/kanagawa.nvim"
  },
  {
    "nyoom-engineering/nyoom.nvim"
  },
  {
    "jacoborus/tender.vim"
  },
  {
    "scottmckendry/cyberdream.nvim"
  },
  {
    "navarasu/onedark.nvim"
  },
}
