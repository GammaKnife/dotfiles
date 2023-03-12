return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },

    -- Custom Keys
    keys = { 
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find_files" },
      { "<leader>fg", "<cmd>Telescope grep_string<cr>", desc = "Telescope grep_string" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers" },
    },

    config = function()
      require("telescope").setup()
    end,
  },
}

