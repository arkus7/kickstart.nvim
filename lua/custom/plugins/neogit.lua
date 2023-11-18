return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"nvim-telescope/telescope.nvim", -- optional
		"sindrets/diffview.nvim", -- optional
		"ibhagwan/fzf-lua", -- optional
	},
	config = function()
		local neogit = require('neogit')
		neogit.setup({})
		vim.keymap.set('n', '<leader>gg', function()
			neogit.open({ kind = "split" })
		end, { desc = "[G]it neo[G]it" })
		vim.keymap.set('n', '<leader>gc', function()
			neogit.open({ "commit" })
		end, { desc = "[G]it [C]ommit" })
	end
}
