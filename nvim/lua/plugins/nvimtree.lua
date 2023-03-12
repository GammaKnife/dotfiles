return {
  {
    "nvim-tree/nvim-tree.lua",

    -- Load on startup
    --lazy = false,
    --priority = 1000,
    
    keys = {
      { "<leader>ft", "<cmd>NvimTreeToggle<cr>", desc = "NvimTreeToggle" },
    },

    config = function()
      require("nvim-tree").setup()
    end,
  },
}
