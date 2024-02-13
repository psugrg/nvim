-- Generic remaps for better usability
-- Note: these remaps are not related to any plugin

-- Handy alias for key mapping function
local keymap = vim.api.nvim_set_keymap

-- Options for key mapping
options = {noremap = true, silent = true}

-- Navigation
keymap("i", "jk", "<ESC>", options) -- Exit insert mode using j+k
keymap("i", "kj", "<ESC>", options) -- Exit insert mmode using k+j

-- File modification
keymap("n", "<C-s>", ":w<CR>", options) -- Save using Ctrl+s
keymap("i", "<C-s>", ":w<CR>", options) -- Save using Ctrl+s

-- Bufer manipulation
keymap("n", "<tab>", ":bn<CR>", options) -- Move to next buffer

