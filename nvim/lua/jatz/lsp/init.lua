local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require "jatz.lsp.mason"
require("jatz.lsp.handlers").setup()
require "jatz.lsp.null-ls"
require "jatz.lsp.lspsaga"
