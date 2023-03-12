 return {
  {
    "vim-airline/vim-airline",

    -- Load on startup
    lazy = false,
    priority = 1000,

    dependencies = { "vim-airline/vim-airline-themes" },

    -- Custom Config
    init = function()
      vim.g.airline_theme="base16_gruvbox_dark_medium"
    end,

  },
}
