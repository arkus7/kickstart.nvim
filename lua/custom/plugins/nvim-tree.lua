-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
		vim.keymap.set('n', '<leader>nn', '<CMD>NvimTreeToggle<CR>', { desc = "[N]vimTree toggle" })
		vim.keymap.set('n', '<leader>nf', '<CMD>NvimTreeFindFile<CR>',
			{ desc = "[N]vimTree [F]ocus on current file" })
		vim.keymap.set('n', '<leader>no', '<CMD>NvimTreeFocus<CR>', { desc = "[N]vimTree [O]pen" })
	end,
}
