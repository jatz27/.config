return {
	"akinsho/bufferline.nvim",
	dependencies = {
		{
			"moll/vim-bbye",
			lazy = true,
			cmd = { "Bdelete" },
			keys = { { "<M-c>", "<cmd>Bdelete!<cr>", mode = "n" } },
		}, -- close buffers
	},
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = function()
		require("util.bufferline")
	end,
}
