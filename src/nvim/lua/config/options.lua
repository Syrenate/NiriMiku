vim.loader.enable()

vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.o.wrap = false

vim.g.have_nerd_font = true

vim.opt.relativenumber = true
vim.opt.nu = true

vim.o.mouse = 'a'
vim.o.showmode = false

-- Clipboard sync between OS and nvim
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true
vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250
vim.o.timeoutlen = 500

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars =  { tab = "> " }

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 10

vim.o.confirm = true

vim.opt.hidden = true

vim.diagnostic.config {
	update_in_insert = false,
	severity_sort = true,
	float = { border='rounded', source='if_many' },
	underline = { severity = { min = vim.diagnostic.severity.WARN } },

	virtual_text = true,
}

