return {
	"rcarriga/nvim-notify",
	keys = {
		{
			"<leader>un",
			function()
				require("notify").dismiss({ silent = true, pending = true })
			end,
			desc = "Delete all Notifications",
		},
	},
	opts = {
		timeout = 2000,
		render = "compact",
		stages = "fade",
		max_height = function()
			return math.floor(vim.o.lines * 0.50)
		end,
		max_width = function()
			return math.floor(vim.o.columns * 0.50)
		end,
	},
}
