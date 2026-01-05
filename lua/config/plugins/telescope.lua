local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

return {
    "nvim-telescope/telescope.nvim",
    depedencies = {
        "nvim-lua/plenary.nvim",
        {"nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0"},
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-c>"] = require("telescope.actions").close,
                    },
                },
            },
        }
    end,
}
