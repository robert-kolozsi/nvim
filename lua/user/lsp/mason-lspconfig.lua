require("mason-lspconfig").setup({})

local DEFAULT_SETTINGS = {
    ensure_installed = {"pyright", "tsserver", "bashls", "cssls", "html", "lua_ls"},
    automatic_installation = false,
    handlers = nil,
}
