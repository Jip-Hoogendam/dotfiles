return {
	{
		"rktjmp/lush.nvim",
		lazy = false,
	},
	{
		dir = vim.fn.expand("~/.config/nvim/themes/pastel_love"),
		name = "pastel_love",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			vim.cmd.colorscheme("pastel_love")
		end,
	},
}
