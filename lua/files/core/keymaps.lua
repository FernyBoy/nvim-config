-- Leader key
vim.g.mapleader = " "

-- Movement keys remap
vim.keymap.set('n', 'j', '<Left>', { noremap = true, silent = true })
vim.keymap.set('n', 'l', '<Down>', { noremap = true, silent = true })
vim.keymap.set('n', 'k', '<Up>', { noremap = true, silent = true })
vim.keymap.set('n', ';', '<Right>', { noremap = true, silent = true })

-- Neotree keymap
vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>')

