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

        keymap.set("n", "<leader>m", togglePreview, { desc = "Toggle Makrdown preview" })
    end
}
