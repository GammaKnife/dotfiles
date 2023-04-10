return {
  {
    "ellisonleao/gruvbox.nvim",

    -- Load on startup
    lazy = false,
    priority = 1000,

    -- Custom Config
     config = function()
      require("gruvbox").setup({
          italic = {
            strings = false,
            operators = false,
            comments = false,

          },
          contrast = "", -- can be "hard", "soft" or empty string
      })
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}
