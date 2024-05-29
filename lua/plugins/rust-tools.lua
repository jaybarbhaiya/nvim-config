return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"simrat39/rust-tools.nvim",
	},
	config = function()
		require("rust-tools").setup({})
	end,
}
