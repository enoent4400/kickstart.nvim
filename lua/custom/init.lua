vim.opt.clipboard:append 'unnamedplus' -- Use system clipboard
vim.opt.clipboard:append 'unnamed' -- Use system clipboard

-- Optional: Add keymaps for explicit clipboard operations
vim.keymap.set({ 'n', 'x' }, 'gy', '"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set({ 'n', 'x' }, 'gp', '"+p', { desc = 'Paste from system clipboard' })
vim.keymap.set({ 'n', 'x' }, 'gP', '"+P', { desc = 'Paste from system clipboard (before)' })

-- Optional: Use black hole register for deletions
vim.keymap.set({ 'n', 'x' }, 'd', '"_d', { desc = 'Delete to black hole register' })
vim.keymap.set({ 'n', 'x' }, 'D', '"_D', { desc = 'Delete to black hole register' })
vim.keymap.set('n', 'x', '"_x', { desc = 'Delete character to black hole register' })
