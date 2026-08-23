return {
	-- guess-indent
	{
		'nmac427/guess-indent.nvim',
		config = function() require('guess-indent').setup{ auto_cmd = true, } end,
	},

	--  gitsigns
	{ 'lewis6991/gitsigns.nvim', },
	
	-- fidget
	{ 'j-hui/fidget.nvim', opts = {} },

	-- lsp config
	{ 
		'https://github.com/neovim/nvim-lspconfig',
	},

	-- mason building
	{ 'mason-org/mason.nvim' },
	{'mason-org/mason-lspconfig.nvim'},
	{'WhoIsSethDaniel/mason-tool-installer.nvim'},

	{'AckslD/swenv.nvim'},

	{ "jaimecgomezz/here.term", opts = {}, },

	{ "tpope/vim-fugitive" }
}
