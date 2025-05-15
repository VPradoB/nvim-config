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
		},
		use_default_keymaps = false, -- Do not use default key mappings
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
