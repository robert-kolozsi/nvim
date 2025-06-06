-- Lazy
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = { "windwp/nvim-ts-autotag" },

    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({
        -- enable syntax highlighting
        highlight = {
            enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
            enable = true,
        },
        -- ensure these language parsers are installed
        auto_install = false,
        ignore_install = { "" }, -- List of parsers to ignore installing
        sync_install = false,
        ensure_installed = {
            "json",
            "javascript",
            "typescript",
            "tsx",
            "yaml",
            "html",
            "css",
            "prisma",
            "markdown",
            "markdown_inline",
            "svelte",
            "graphql",
            "bash",
            "lua",
            "python",
            "vim",
            "dockerfile",
            "gitignore",
            "query",
            "vimdoc",
            "c",
        },
        incremental_selection = {
            enable = true,
            keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
            },
        },
        modules = {},  -- I'm not sure yet how to use this.
        })
    end,
}
