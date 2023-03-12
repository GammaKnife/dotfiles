return {
  {
    "folke/which-key.nvim",

    version = false,

    -- Load on launch
    keys = {
      { "<leader>h", "<cmd>WhichKey<cr>", desc = "WhichKey" },
    },

    -- Custom Config
    config = function(_, opts)
      
      local wk = require("which-key")
      wk.setup(opts)
      
      -- Custom keymaps
      local keymaps = {
        -- WhichKey
        ["<leader>h"] = { name = "+WhichKey" },
 
        -- Nvim LSP
        ["<leader>ll"] = { name = "+Nvim-LSP" },
        ["<leader>lo"] = { name = "+Stop-LSP" },

        -- NvimTree 
        ["<leader>ft"] = { name = "+NvimTreeToggle" },
       
        -- Telescope
        ["<leader>ff"] = { name = "+Telescope find_files" },
        ["<leader>fg"] = { name = "+Telescope grep_string" },
        ["<leader>fb"] = { name = "+Telescope buffers" },

        -- Toggletermm
        ["<leader>tt"] = { name = "+ToggleTerm" },

      }
      wk.register(keymaps)
    end,
  }, }
