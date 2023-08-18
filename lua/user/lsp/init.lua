local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

--require("user.lsp.mason")  -- TO BE ADDED SOON
--require("user.lsp.mason-lsp-config")  -- TO BE ADDED SOON
--require("user.lsp.lsp-config")  -- TO BE ADDED SOON
require("user.lsp.lsp-installer")  -- This has to go becausse it's ARCHIVED
require "user.lsp.null-ls"
require("user.lsp.handlers").setup()
