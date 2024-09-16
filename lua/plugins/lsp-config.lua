return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
                    "ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})

            lspconfig.ts_ls.setup({})

            lspconfig.rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
						diagnostics = {
							enable = true,
						},
					},
				},
			})

			lspconfig.yamlls.setup({
				settings = {
					yaml = {
						schemas = {
							["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.0/schema.yaml"] = "/*",
						},
					},
				},
			})

            lspconfig.pyright.setup({})

            -- Keymaps
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>A", vim.lsp.buf.code_action, {})
		end,
	},
}
