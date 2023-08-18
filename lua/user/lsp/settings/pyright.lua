return {
	settings = {

        python = {
            exclude = {'**/__pycache__'},
            disableLanguageServices = false,
            disableOrgaizeImport = true,
            analysis = {
                diagnosticMode = 'openFilesOnly',
                autoImportCompletions = false,
                typeCheckingMode = "basic"
            },
        }
	},
}
