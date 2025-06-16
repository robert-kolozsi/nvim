return {
    require("config.plugins.lsp.mason"),
    require("config.plugins.lsp.lspconfig"),

    vim.lsp.set_log_level("off"),
}
