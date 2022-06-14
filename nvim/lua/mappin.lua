local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '

-- Salir y guardar
mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<A-q>", ":q!<CR>")

-- Eliminar un buffer
mapper("n", "<leader>dd", ":bd<CR>")

-- dividir pantalla
mapper("n", "<leader>dv", ":vsplit<CR>")
mapper("n", "<leader>dh", ":split<CR>")

-- TAB siguiente buffer
mapper("n", "<S-l>", ":bnext<CR>")
-- SHIFT-TAB previo buffer
mapper("n", "<S-h>", ":bprevious<CR>")

-- Regresar a modo insertar con jk
mapper("i", "jk", "<Esc>")
mapper("i", "kj", "<Esc>")
-- Control-c escape
mapper("n", "<C-c>", "<Esc>")
mapper("v", "<C-c>", "<Esc>")

-- Better window navigation
mapper("n", "<C-h>", "<C-w>h")
mapper("n", "<C-j>", "<C-w>j")
mapper("n", "<C-k>", "<C-w>k")
mapper("n", "<C-l>", "<C-w>l")

-- Usando alt + hjkl cambia el tamanio de las ventanas
mapper("n", "<M-j>", ":resize -2<CR>")
mapper("n", "<M-k>", ":resize +2<CR>")
mapper("n", "<M-h>", ":vertical resize -2<CR>")
mapper("n", "<M-l>", ":vertical resize +2<CR>")

-- Borrar el resaltado de busquedas /
mapper("n", ".,", ":nohlsearch<CR>")
mapper("n", ",.", ":nohlsearch<CR>")

-- Desahacer
mapper("n", "<C-z>", "u")

-- Indentar desde modo visual
mapper("v", "<", "<gv")
mapper("v", ">", ">gv")
-- Mover texto arriba y abajo en modo visual
mapper("v", "J", ":move '>+1<CR>gv-gv")
mapper("v", "K", ":move '<-2<CR>gv-gv")

-- Maximisar ventanas
mapper("n", "<A-m>", ":MaximizerToggle<CR>")

-- Telescope
mapper("n", "<leader>f", "<cmd>Telescope find_files<CR>")
mapper("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
mapper("n", "<leader>fgs", "<cmd>Telescope git_status<CR>")
mapper("n", "<leader>fgc", "<cmd>Telescope git_commits<CR>")
mapper("n", "<leader>fgb", "<cmd>Telescope git_branches<CR>")

-- Terminal
-- mapper("n", "<A-t>", "<cmd>lua _PWSH_TOGGLE()<CR>")
-- mapper("t", "<C-t>", "<cmd>lua _PWSH_TOGGLE()<CR>")
-- mapper("n", "<A-s>", "<cmd>lua _LIVE_TOGGLE()<CR>")
-- mapper("t", "<A-s>", "<c\\><cmd>lua _LIVE_TOGGLE()<CR>")
-- Lazygit
mapper("n", "<leader>gg", ":LazyGit<CR>")

-- Nvim-Tree
-- Abrir nvim-tree
mapper("n", "<A-n>", ":NvimTreeToggle<CR>")
-- refrescar nvim-tree
mapper("n", "<leader>r", ":NvimTreeToggle<CR>")


