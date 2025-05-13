return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			-- Configuración básica para hacer el fondo transparente
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {}, -- table of extra groups
			exclude_groups = {}, -- table of groups you don't want to set
		})
	end,
}
