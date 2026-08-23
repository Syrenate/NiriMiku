return {
	{
		'folke/which-key.nvim',
		event = 'VeryLazy',
		opts = {},
		keys = {
			{
				'<leader>?',
				function() require('which-key').show({ global = false }) end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
		icons = { mappings = vim.g.have_nerd_font },
	},
}

