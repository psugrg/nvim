return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
      local wk = require("which-key")
      local tb = require('telescope.builtin')
      -- Register custom commands in you own menu
      wk.register({
          e = { "<cmd>Ex<cr>", "File explorer" }, -- command assinged to a key
          t = { "<cmd>terminal<cr><cmd>set nonu<cr>i", "Terminal" },
          f = { -- key that has a sub-menu
              name = "Find", -- optional group name
              f = { function() tb.find_files() end, "Find files" }, -- command assigned to a key
              g = { function() tb.git_files() end, "Find files in git repository" },
              b = { function() tb.buffers() end, "Find buffer" },
            }
        }, 
        { prefix = "<leader>" })
  end
}


