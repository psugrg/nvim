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
      wk.add({
          { "<leader>e", "<cmd>Ex<cr>", desc = "File explorer" },
          { "<leader>t", "<cmd>terminal<cr><cmd>set nonu<cr>i", desc = "Terminal" },
          { "<leader>f", group = "Find" },
          { "<leader>ff", function() tb.find_files() end, desc = "Find files" },
          { "<leader>fg", function() tb.git_files() end, desc = "Find files in git repository" },
          { "<leader>fb", function() tb.buffers() end, desc = "Find buffer" },
        })
  end
}


