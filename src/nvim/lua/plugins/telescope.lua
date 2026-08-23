return {
	{
		'nvim-telescope/telescope.nvim', version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    		},
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>pw', builtin.find_files, { desc = 'Search [W]hole Home Directory' }) 
			vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = '[P]roject search by [G]rep' })
			vim.keymap.set('n', '<leader>pk', builtin.keymaps, { desc = '[P]roject [K]eymaps' })
			vim.keymap.set('n', '<leader>ps', function() builtin.live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files', } end, { desc = '[P]roject [S]earch in Open Files' })
			vim.keymap.set("n", "<leader>pf", function()
				local dir = vim.fn.argv(0)
				if dir ~= "" and vim.fn.isdirectory(dir) == 1 then
					require('telescope.builtin').find_files({ cwd = dir })
				else
					require('telescope.builtin').find_files()
				end
			end, {noremap = true, silent = true, desc = '[P]roject [F]iles' })

			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
				callback = function(event)
					local buf = event.buf

					vim.keymap.set('n', 'grr', builtin.lsp_references, { buffer = buf, desc = '[G]oto [R]eferences' })
      					vim.keymap.set('n', 'gri', builtin.lsp_implementations, { buffer = buf, desc = '[G]oto [I]mplementation' })
					vim.keymap.set('n', 'grd', builtin.lsp_definitions, { buffer = buf, desc = '[G]oto [D]efinition' })
      					vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { buffer = buf, desc = 'Open Document Symbols' })
      					vim.keymap.set('n', 'gW', builtin.lsp_dynamic_workspace_symbols, { buffer = buf, desc = 'Open Workspace Symbols' })
      					vim.keymap.set('n', 'grt', builtin.lsp_type_definitions, { buffer = buf, desc = '[G]oto [T]ype Definition' })
				end,
			})
		end,
	}
}
