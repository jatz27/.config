return {
	"iamcco/markdown-preview.nvim",
	build = "cd app && npm install",
	--[[ build = "cd app && yarn install", ]]
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_auto_start = 1
		vim.g.mkdp_auto_close = 1
		vim.g.mkdp_refresh_slow = 0
	end,
}
