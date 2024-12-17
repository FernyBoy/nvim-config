-- Code numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Leader key
vim.g.mapleader = " "

-- Lazy vim installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
    {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")

-- Telescope keymap
local builtin = require("telescope.builtin")
vim.keymap.set('n', 'm', builtin.find_files, {})
vim.keymap.set('n', '<C-m>', builtin.live_grep, {})

-- Neotree keymap
vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>')

-- Color scheme
vim.cmd("colorscheme tokyonight")
