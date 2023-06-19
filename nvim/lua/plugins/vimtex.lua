return {
	"lervag/vimtex",
	config = function()
		vim.g.vimtex_compiler_method = "tectonic"
		vim.g.vimtex_view_general_method = "sumatraPDF"
		vim.g.vimtex_view_general_viewer = "sumatraPDF"
	end,
}
