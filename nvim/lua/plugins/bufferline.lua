return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"kyazdani42/nvim-web-devicons",
		"moll/vim-bbye",
	},
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	keys = {
		{ "<M-c>", "<cmd>Bdelete!<cr>", mode = "n", desc = "Close Buffer" },
	},
	config = function()
		require("util.bufferline")
	end,
}
