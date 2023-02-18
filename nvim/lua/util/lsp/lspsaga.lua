local status_ok, lspsaga = pcall(require, "lspsaga")
if not status_ok then
	return
end

lspsaga.setup({
	ui = {
		theme = "round",
		title = true,
		border = "rounded",
		winblend = 0,
		colors = {
			normal_bg = "#191c24",
		},
	},
})
--local mapp = { vim.keymap.set }
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", "ga", "<cmd>Lspsaga show_buf_diagnostics<CR>", opts)
vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "J", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "K", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "ac", "<cmd>Lspsaga code_action<CR>", opts)
