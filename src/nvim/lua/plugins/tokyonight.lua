return {
	{
		'folke/tokyonight.nvim',
		opts = {
			style = "storm",
			on_colors = function(colors)
				colors.comment = "#8181b1"
			end,
			on_highlights = function(hl, c)
				hl.LineNr = { fg = c.comment } 
				-- comment
				hl.LineNrAbove = { fg = c.comment }
				hl.LineNrBelow = { fg = c.comment }
			end,
		},

		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	}
}
