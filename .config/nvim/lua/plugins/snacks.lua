return {
	{
		"folke/snacks.nvim",
		opts = {
			scroll = { enabled = false },
			picker = {
				ignored = true,
				exclude = {
					".git",
					".pixi",
					".DS_Store",
					"__pycache__",
					"node_modules",
				},
				sources = {
					files = {
						ignored = true,
					},
					explorer = {
						layout = {
							layout = {
								width = 0.24,
								resize = false,
							},
						},
					},
				},
			},
			terminal = {
				win = {
					position = "float",
					width = 0.6,
					keys = {
						{
							"<C-\\>",
							"hide",
							mode = { "t", "n" },
						},
						term_normal = {
							"<esc>",
							function()
								vim.cmd("stopinsert")
							end,
							mode = "t",
							desc = "esc to normal mode",
						},
					},
				},
			},
		},
	},
}
