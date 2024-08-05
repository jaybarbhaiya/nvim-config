return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"simrat39/rust-tools.nvim",
	},
	config = function()
		require("rust-tools").setup({})
		vim.keymap.set({ "n", "v" }, "<leader>A", vim.lsp.buf.code_action, {})
	end,
}
