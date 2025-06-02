local util = require('lspconfig.util')

return {
    --default_config = {
    --    autostart = false
    --},

    --root_dir = function(fname)
    --    local root = util.root_pattern("pyrightconfig.json")(fname)
    --    print("pyright root_dir: " .. (root or "nil"))
    --    return root
    --end,

    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = 'openFilesOnly',
                useLibraryCodeForTypes = true,
                autoImportCompletions = false,
                typeCheckingMode = "basic"
            },
            exclude = {'**/__pycache__'},
            disableLanguageServices = false,
            disableOrgaizeImport = true,
        }
	},
}
