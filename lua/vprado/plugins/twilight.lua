return {
	"folke/twilight.nvim",
	dimming = {
		alpha = 0.25,
		treesitter = true,
		expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
			"function",
			"method",
			"table",
			"if_statement",
		},
	},
}
