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

-- Terminal
keymap("n", "<leader>tt", ":split<CR>:terminal<CR>:set nonu<CR>i", options) -- Open terminal below (horizontal split, in a new window)
keymap("n", "<leader>t", ":terminal<CR>:set nonu<CR>i", options) -- Open terminal in the current window
keymap("t", "<Esc>", "<C-\\><C-n>", options) -- Use ESC to escape terminal mode
