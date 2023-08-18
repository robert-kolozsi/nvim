local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
    print("ERROR: lspconfig not loaded!")
    print(lspconfig)
    return
end

local pyright_settings = require('user.lsp.settings.pyright')
lspconfig.pyright.setup(pyright_settings)

lspconfig.lua_ls.setup{
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                eanble = false,
            },
        },
    },
}

lspconfig.tsserver.setup{}
lspconfig.bashls.setup{}
lspconfig.cssls.setup{}
lspconfig.html.setup{}

-- Redifining signs
