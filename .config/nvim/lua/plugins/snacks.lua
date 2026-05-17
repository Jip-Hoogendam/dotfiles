return {
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				ignored = false,
				sources = {
					files = {
						hidden = false, -- Show hidden/dotfiles
					},
					grep = {
						hidden = true, -- Also search in hidden files
					},
				},
			},
		},
	},
}
