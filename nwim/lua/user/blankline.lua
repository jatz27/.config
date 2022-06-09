local status_ok, blank = pcall(require, "indent_blankline")
if not status_ok then
  return
end

blank.setup {
  indentLine_enabled = 1,
  char = "▏",   -- for example, context is off by default, use this to turn it on
  filetype_exclude = {
   "help",
   "terminal",
   "alpha",
   "packer",
   "lspinfo",
   "TelescopePrompt",
   "TelescopeResults",
   "lsp-installer",
   "",
  },
  buftype_exclude = { "terminal" },
  show_current_context = true,
  show_current_context_start = true,
  -- show_trailing_blankline_indent = false,
  -- show_first_indent_level = false,
}
