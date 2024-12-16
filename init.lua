-- Code numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4


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

local plugins =
{
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = 
        {
            transparent = true,
        },
    },

    {    
        "nvim-telescope/telescope.nvim", 
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}

local opts = {}

require("lazy").setup(plugins, opts)

-- Color scheme
vim.cmd("colorscheme tokyonight")
