vim.pack.add({
	"https://github.com/williamboman/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/williamboman/mason.nvim",
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
		},
	},
})

require("mason").setup()
-- Note: `nvim-lspconfig` needs to be in 'runtimepath' by the time you set up mason-lspconfig.nvim
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
})
