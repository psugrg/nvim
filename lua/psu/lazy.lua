local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Color Schemes:
    { 'rose-pine/neovim', name = 'rose-pine' },
    -- Plugins:
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        }
    },
    {'norcalli/nvim-colorizer.lua', name = 'colorizer' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
}

local opts = {

}

require("lazy").setup(plugins, opts)
