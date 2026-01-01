return {
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
