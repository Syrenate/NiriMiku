require('config.options') -- General Options
require('config.keymaps') -- Custom Keymaps
require('config.lazy') -- Plugin Manager
-- require('config.swenv')

-- Enable lsp servers
vim.lsp.enable('pyright')
local servers = { pyright = {}, }

-- Mason building
require('mason').setup{}
require('mason-lspconfig').setup {
	automatic_enable = false,
}
local ensure_installed = vim.tbl_keys(servers or {})
vim.list_extend(ensure_installed, {})

require('mason-tool-installer').setup { ensure_installed = ensure_installed }

for name, server in pairs(servers) do
	vim.lsp.config(name, server)
	vim.lsp.enable(name)
end

-- Here-term (open terminal)
require("here-term").setup({
    mappings = {
        enable = true,
        toggle = "<C-;>",
        kill = "<C-S-;>",
    },
    extra_mappings = {
        enable = true, -- Disable them entirely
        escape = "<C-x>", -- Escape terminal mode
        left = "<C-w>h", -- Move to the left window
        down = "<C-w>j", -- Move to the window down
        up = "<C-w>k", -- Move to the window up
        right = "<C-w>l", -- Move to right window
    },
})
