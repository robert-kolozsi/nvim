-- Packer old
--local status_ok, telescope = pcall(require, "telescope")
--if not status_ok then
--  return
--end

-- This is not yet working on Mac
--telescope.load_extension('media_files')

--local builtin = require("telescope.builtin")
--vim.keymap.set('n', '<leader>fw', builtin.grep_string, {desc = "Find Word under Cursor"})
--vim.keymap.set('n', '<leader>gc', builtin.git_commits, {desc = "Search Git Commits"})
--vim.keymap.set('n', '<leader>gb', builtin.git_bcommits, {desc = "Search Git Commits for Buffer"})
--
--vim.keymap.set('n', '<leader>/', function()
--    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--        winblend = 10,
--        previewer = false,
--    })
--    end, {desc = '[/] Fuzziy search in current buffer'}
--)

--require("telescope").load_extension("live_grep_args")
--vim.keymap.set('n', '<leader>fg', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live Grep"})
--
--local actions = require "telescope.actions"
--
--telescope.setup {
--  defaults = {
--
--    prompt_prefix = " ",
--    selection_caret = " ",
--    path_display = { "smart" },
--
--    mappings = {
--      i = {
--        ["<C-n>"] = actions.cycle_history_next,
--        ["<C-p>"] = actions.cycle_history_prev,
--
--        ["<C-j>"] = actions.move_selection_next,
--        ["<C-k>"] = actions.move_selection_previous,
--
--        ["<C-c>"] = actions.close,
--
--        ["<Down>"] = actions.move_selection_next,
--        ["<Up>"] = actions.move_selection_previous,
--
--        ["<CR>"] = actions.select_default,
--        ["<C-x>"] = actions.select_horizontal,
--        ["<C-v>"] = actions.select_vertical,
--        ["<C-t>"] = actions.select_tab,
--
--        ["<C-u>"] = actions.preview_scrolling_up,
--        ["<C-d>"] = actions.preview_scrolling_down,
--
--        ["<PageUp>"] = actions.results_scrolling_up,
--        ["<PageDown>"] = actions.results_scrolling_down,
--
--        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
--        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
--        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
--        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
--        ["<C-l>"] = actions.complete_tag,
--        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
--      },
--
--      n = {
--        ["<esc>"] = actions.close,
--        ["<CR>"] = actions.select_default,
--        ["<C-x>"] = actions.select_horizontal,
--        ["<C-v>"] = actions.select_vertical,
--        ["<C-t>"] = actions.select_tab,
--
--        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
--        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
--        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
--        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
--
--        ["j"] = actions.move_selection_next,
--        ["k"] = actions.move_selection_previous,
--        ["H"] = actions.move_to_top,
--        ["M"] = actions.move_to_middle,
--        ["L"] = actions.move_to_bottom,
--
--        ["<Down>"] = actions.move_selection_next,
--        ["<Up>"] = actions.move_selection_previous,
--        ["gg"] = actions.move_to_top,
--        ["G"] = actions.move_to_bottom,
--
--        ["<C-u>"] = actions.preview_scrolling_up,
--        ["<C-d>"] = actions.preview_scrolling_down,
--
--        ["<PageUp>"] = actions.results_scrolling_up,
--        ["<PageDown>"] = actions.results_scrolling_down,
--
--        ["?"] = actions.which_key,
--      },
--    },
--  },
--  -- pickers = {
--    -- Default configuration for builtin pickers goes here:
--    -- picker_name = {
--    --   picker_config_key = value,
--    --   ...
--    -- }
--    -- Now the picker_config_key will be applied every time you call this
--    -- builtin picker
--  -- },
--  extensions = {
--    -- This is not working yet on Mac telescope.media_files
--    -- media_files = {
--    --     -- filetypes whitelist
--    --     -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
--    --     filetypes = {"png", "webp", "jpg", "jpeg"},
--    --     find_cmd = "rg" -- find command (defaults to `fd`)
--    --   }
--    -- Your extension configuration goes here:
--    -- extension_name = {
--    --   extension_config_key = value,
--    -- }
--    -- please take a look at the readme of the extension you want to configure
--  },
--}

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

        --telescope.load_extension("live-grep-args")
        --vim.keymap.set('n', '<leader>fg', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live Grep"})
    end,

}
