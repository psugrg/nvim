require("psu.set")
require("psu.remap")
require("psu.lazy") -- plugin manager
-- Plugins configuration
require("psu.plugin.telescope")
require("psu.plugin.treesitter")
require("psu.plugin.rose-pine")
require("psu.plugin.which-key") -- remaps that are triggered by the <leader> key
-- Colorscheme
-- - Choose your color scheme by uncommenting one of these lines:
vim.cmd('colorscheme rose-pine')
-- vim.cmd('colorscheme rose-pine-main')
-- vim.cmd('colorscheme rose-pine-moon')
-- vim.cmd('colorscheme rose-pine-dawn')
