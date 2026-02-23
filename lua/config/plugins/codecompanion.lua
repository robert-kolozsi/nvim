return {
    {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        -- for display UI/UX
        "hrsh7th/nvim-cmp",
        "stevearc/dressing.nvim",
    },
    config = function()
        require("codecompanion").setup({

        strategies = {
            chat = { adapter = "gemini" },
            inline = { adapter = "gemini" },
            agent = { adapter = "gemini" },
        },

        adapters = {
            -- Flash model
            gemini = function()
              return require("codecompanion.adapters").extend("gemini", {
                            schema = {
                                model = { default = "gemini" },
                            },
                            env = { api_key = "GEMINI_API_KEY" },
                        })
            end,
        },
        opts = {
            log_level = "DEBUG", -- Helps us see errors in :messages if they happen
        },

        --display = {
        --    chat = {
        --        show_settings = false,
        --        window = { layout = "vertical", width = 0.4, },
        --        --theme = "minimal",
        --        --keymaps = { close = "<Esc>", submit = "<Enter>", toggle = "<C-s>", }, },
        --},
        })  -- END setup

        -- Basic Keymaps
        local map = vim.keymap.set
        map("n", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "AI Chat" })
        map({ "n", "v" }, "<leader>ca", "<cmd>CodeCompanionActions<cr>", { desc = "AI Actions" })
        map("v", "<leader>ga", "<cmd>CodeCompanionChat Add<cr>", { desc = "Add to AI Chat" })
    end,
    }
}
