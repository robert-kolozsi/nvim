return {
    "neovim/nvim-lspconfig",
    event = {"BufEnter", "BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",  -- plays nicely with "hrsh7th/nvim-cmp"
        { "antosha417/nvim-lsp-file-operations", config = true },
        { "folke/neodev.nvim", opts = {} },
    },
    config = function()

        vim.lsp.config('pyright', require('config.plugins.lsp.settings.pyright'))
        vim.lsp.config('lua_ls', require('config.plugins.lsp.settings.lua_ls'))
        vim.lsp.enable('pyright', 'lua_ls', 'ts_ls', 'bashls', 'cssls', 'html')

        -- Redifining signs
        -- Bold Error , 
        -- Erro = 
        -- Bold Warning 
        -- Warning 
        -- Bold Information 󰋼
        -- Information  󰋽
        -- Bold Hint 󱩖
        -- Hint  󰛩

        -- Diagnostic configuration
        vim.diagnostic.config({
            virtual_text = {
                prefix = "●",  -- Or use "", "▎", etc.
                spacing = 4,
            },
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN]  = "",
                    [vim.diagnostic.severity.INFO]  = "󰋽",
                    [vim.diagnostic.severity.HINT]  = "󰛩",
                },
            },
            underline = true,
            update_in_insert = false,
            severity_sort = true,
            float = {
                focusable = false,
                border = "rounded",
                style = "minimal",
                source = "always",
                header = "",
                prefix = "",
            },
        })

        -- Global mappings.
        -- See `:help vim.diagnostic.*` for documentation on any of the below functions
        vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
        vim.keymap.set('n', 'gq', vim.diagnostic.setloclist)

        -- Manually stop start LSP server
        vim.keymap.set('n', '<leader>ll', function()
            vim.cmd("LspStop")
            vim.cmd("LspStart")
        end, { desc = "Restart LSP" })

        -- Use LspAttach autocommand to only map the following keys
        -- after the language server attaches to the current buffer
        vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
            -- Enable completion triggered by <c-x><c-o>
            vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

            -- Buffer local mappings.
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local opts = { buffer = ev.buf }
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
            vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
            vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
            vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, opts)
            vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
            end, opts)
        end,
        })
    end
}
