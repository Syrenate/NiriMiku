vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open file explorer here' })

-- Move selection up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {desc = 'Move selection up' })

-- Append below to current line (keep cursor)
vim.keymap.set('n', 'J', "mzJ`z", {desc = 'Append line below to current line'})

-- Halfpage up/down (keep cursor)
vim.keymap.set('n', '<C-d>', "<C-d>zz", {desc = 'Haldpage down'})
vim.keymap.set('n', '<C-u>', "<C-u>zz", {desc = 'Halfpage up'})

-- Move to selection (keep cursor)
vim.keymap.set('n', 'n', "nzzzv", {desc = 'Move to next selection'})
vim.keymap.set('n', 'N', "Nzzzv", {desc = 'Move to previous selection'})

-- Keep yank buffer when pasting over
vim.keymap.set('x', '<leader>p', "\"_dP", {desc='Put without deleting buffer'})

-- Yank to OS clipboard
vim.keymap.set('n', '<leader>y', "\"+y", {desc = 'Yank to clipboard'})
vim.keymap.set('v', '<leader>y', "\"+y", {desc = 'Yank to clipboard'})
vim.keymap.set('n', '<leader>Y', "\"+Y", {desc = 'Yank to clipboard'})

-- Delete to OS clipboard
vim.keymap.set('n', '<leader>d', "\"+d", {desc = 'Delete and yank to OS clipboard'})
vim.keymap.set('v', '<leader>d', "\"+d", {desc = 'Delete and yank to OS clipboard'})

vim.keymap.set('n', 'Q', "<nop>") 

vim.keymap.set('n', '<leader>s', ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {desc="Replace all instance of current word"})


vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight selection when yanking',
	group = vim.api.nvim_create_augroup('kickstart-highlight-tank', {clear = true}),
	callback = function() vim.hl.on_yank() end,
})

