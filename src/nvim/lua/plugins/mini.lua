return {
	{
		'nvim-mini/mini.nvim',
		version = '*',
		config = function() 
			require('mini.misc').setup_termbg_sync()
			local statusline = require 'mini.statusline'
			statusline.setup { use_icons = true }
		end,

	}
}

