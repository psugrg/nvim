return {
    "folke/which-key.nvim",
    dependencies = {
        "echasnovski/mini.icons",
    },
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
        -- Register custom commands in you own menu
        wk.add({
            { "<leader>q", ":qa<CR>" , desc = "Quit" },
            { "<leader>f", group = "Find file" },
            { "<leader>s", group = "Search text" },
            { "<leader>g", group = "Git" },
            { "<leader>u", group = "Utils" },
            { "<leader>b", group = "Buffer" },
            { "<leader>l", group = "LSP" },
        })
    end
}


