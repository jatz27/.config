return {
	"neovim/nvim-lspconfig", -- Enable LSP
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim", -- simple to use language server installer
		"williamboman/mason-lspconfig.nvim",
		"RRethy/vim-illuminate",
		"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
		"nvim-lua/plenary.nvim",
		"glepnir/lspsaga.nvim", -- LSP UIs
	},
	config = function()
		require("util.lsp")
	end,
}
