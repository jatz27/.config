return {
	"kyazdani42/nvim-tree.lua",
	lazy = true,
	cmd = {
		"NvimTreeToggle",
	},
	keys = {
		{ "<M-n>", "<cmd>NvimTreeToggle<cr>", mode = "n" },
	},
	config = function()
		require("nvim-tree").setup({
			renderer = {
				highlight_git = true,
				root_folder_modifier = ":t",
				icons = {
					show = {
						git = true,
						folder = true,
						file = true,
						folder_arrow = true,
					},
					glyphs = {
						default = "",
						symlink = "",
						git = {
							unstaged = "",
							staged = "S",
							unmerged = "",
							renamed = "➜",
							deleted = "",
							untracked = "U",
							ignored = "◌",
						},
						folder = {
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
						},
					},
				},
			},
			disable_netrw = true,
			hijack_netrw = true,
			--[[ open_on_setup = false, ]]
			--[[ ignore_ft_on_setup = { ]]
			--[[ 	"startify", ]]
			--[[ 	"dashboard", ]]
			--[[ 	"alpha", ]]
			--[[ }, ]]
			diagnostics = {
				enable = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			update_focused_file = {
				enable = true,
				update_cwd = true,
				update_root = true,
				ignore_list = {},
			},
			git = {
				enable = true,
				ignore = true,
				timeout = 500,
			},
			view = {
				--[[ width = 30, ]]
				--[[ height = 30, ]]
				hide_root_folder = false,
				side = "left",
				mappings = {
					custom_only = false,
					list = {
						{ key = "l", action = "edit" },
						{ key = "h", action = "close_node" },
					},
				},
				number = false,
				relativenumber = false,
			},
			actions = {
				use_system_clipboard = true,
				open_file = {
					quit_on_open = false,
					resize_window = true,
				},
			},
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
		})
		--[[ Auto Close ]]
		vim.api.nvim_create_autocmd("BufEnter", {
			nested = true,
			callback = function()
				if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
					vim.cmd("quit")
				end
			end,
			---------------------------------------------------------------------------------------------
		})
	end,
}
