-- Leader key
vim.g.mapleader = " "

-- Movement keys remap (normal, visual and operator-pending, so `dj`, `yl`... follow the same layout)
local modes = { 'n', 'x', 'o' }
vim.keymap.set(modes, 'j', '<Left>', { noremap = true, silent = true })
vim.keymap.set(modes, 'l', '<Down>', { noremap = true, silent = true })
vim.keymap.set(modes, 'k', '<Up>', { noremap = true, silent = true })
vim.keymap.set(modes, ';', '<Right>', { noremap = true, silent = true })

-- Neotree keymap
vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>')
