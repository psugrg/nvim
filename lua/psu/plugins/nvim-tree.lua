return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "folke/which-key.nvim",
        "nvim-tree/nvim-web-devicons" },
    config = function()
        local nvimtree = require("nvim-tree")

        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        nvimtree.setup({
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            git = {
                ignore = false,
            },
        })

        -- set keymaps
        local wk = require("which-key")
        local api = require "nvim-tree.api"
        wk.add({
            { "<leader>e", group = "File Explorer" },
            { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
            { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Toggle file explorer on current file" },
            { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer" },
            { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh file explorer" },
            { "<leader>e?", function () api.tree.toggle_help() end, desc = "Toggle help" }
        })
    end
}
