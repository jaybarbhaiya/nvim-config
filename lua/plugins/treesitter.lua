return {
	{
		"nvim-treesitter/nvim-treesitter-refactor",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-refactor" },
		build = ":TSUpdate",
		config = function()
			local treesitter_config = require("nvim-treesitter.configs")
			treesitter_config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				refactor = {
					highlight_definitions = { enable = true, clear_on_cursor_move = true },
                    -- highlight_current_scope = { enable = true },
                    smart_rename = {
                        enable = true,
                        keymaps = {
                            smart_rename = "grr",
                        },
                    },
				},
			})
		end,
	},
}
