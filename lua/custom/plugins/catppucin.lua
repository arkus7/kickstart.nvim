-- 🍨 Soothing pastel theme for (Neo)vim
return
{
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme 'catppuccin-macchiato'
	end,
	opts = {
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			telescope = {
				enabled = true
			},
			which_key = true
		}
	}
}
