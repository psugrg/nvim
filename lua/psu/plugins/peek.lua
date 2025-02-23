return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup({
            theme = 'light',
            app = 'browser', -- Change to 'webview' for a standalone preview window
        })
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        local keymap = vim.keymap

        local function togglePreview()
            local peek = require("peek")
            if (peek.is_open()) then
                peek.close()
            else
                peek.open()
            end
        end

        local wk = require("which-key")
        wk.add({
            { "<leader>p", function()
                    local buf = vim.api.nvim_get_current_buf() 
                    local ft = vim.api.nvim_buf_get_option(buf, "filetype")
                    if ft == "markdown" then
                        togglePreview()
                    else
                        vim.notify("No preview available for this file!", vim.log.levels.ERR)
                    end
                end, desc = "Toggle preview"
            },
        })
    end
}

