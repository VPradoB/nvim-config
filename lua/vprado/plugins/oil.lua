-- This file contains the configuration for the oil.nvim plugin in Neovim.

return {
	-- Plugin: oil.nvim
	-- URL: https://github.com/stevearc/oil.nvim
	-- Description: A Neovim plugin for managing and navigating directories.
	"stevearc/oil.nvim",

	opts = {
		-- Key mappings for oil.nvim actions
		keymaps = {
			["<CR>"] = "actions.select", -- Select entry
			["<leader>p"] = "actions.preview", -- Preview entry
			["-"] = "actions.parent", -- Go to parent directory
			["_"] = "actions.open_cwd", -- Open current working directory
			["g."] = { "actions.toggle_hidden", mode = "n" },
		},
		use_default_keymaps = false, -- Do not use default key mappings
	},
	view_options = {
		show_hidden = true,
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
