local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- find files (everywhere)
vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- find files in git repository
vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) -- find buffers
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({search = vim.fn.input("Grep > ")})
end) -- find files containing a string
