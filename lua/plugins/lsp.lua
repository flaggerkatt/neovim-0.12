vim.pack.add({
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/b0o/SchemaStore.nvim" },
})

require("mason").setup()
require("mason-lspconfig").setup({})
require("mason-tool-installer").setup({})
