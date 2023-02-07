return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		lsp = {
			overrides = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
		},
		presents = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
		},
		commands = {
			history = {
				view = "split",
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
