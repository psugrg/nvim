return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require('Comment').setup()

        local keymap = vim.api.nvim_set_keymap
        keymap("n", "<C-_>", "gcc", { desc = "Comment line" }) -- this is actually a Ctrl+/ (for some reason it must be <C-_>
        keymap("v", "<C-_>", "gc", { desc = "Comment block" }) -- this is actually a Ctrl+/ (for some reason it must be <C-_>

        end
}
