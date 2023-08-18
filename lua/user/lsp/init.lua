local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.mason")
require("user.lsp.mason-lspconfig")
require("user.lsp.lspconfig")
require "user.lsp.null-ls"

vim.lsp.set_log_level("debug")
