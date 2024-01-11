return {
	"shellRaining/hlchunk.nvim",
	event = { "UIEnter" },
	config = function()
		require("hlchunk").setup({
			indent = {
				chars = { "│", "¦", "┆", "┊" },
			},
			blank = {
				enabled = false,
			},
		})
	end,
}
