local cmp_tabnine_status, cmp_tabnine = pcall(require, "cmp_tabnine.config")
if not cmp_tabnine_status then
	return
end

cmp_tabnine.setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = "..",
	show_prediction_strength = false,
})
