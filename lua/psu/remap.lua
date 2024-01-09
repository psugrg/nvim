-- Remaps for better usability

-- Handy alias for key mapping function
local keymap = vim.api.nvim_set_keymap

-- Options for key mapping
options = {noremap = true, silent = true}

-- Navigation
keymap("i", "jk", "<ESC>", options) -- Exit insert mode using j+k
keymap("i", "kj", "<ESC>", options) -- Exit insert mmode using k+j

-- Directories & project navigation
keymap("n", "<leader><leader>", ":Ex<CR>", options) -- Open files navigation

-- File modification
keymap("n", "<C-s>", ":w<CR>", options) -- Save using Ctrl+s
keymap("i", "<C-s>", ":w<CR>", options) -- Save using Ctrl+s

