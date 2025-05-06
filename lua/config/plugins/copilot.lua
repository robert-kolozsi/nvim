--
-- This is an original plugin I will leave it here for future reference if they decide to
-- implement the full feature in future.
--return {
--    "github/copilot.vim",
--    event = "InsertEnter",
--    config = function()
--        vim.g.copilot_no_tab_map = true
--        vim.g.copilot_assume_mapped = true
--        vim.g.copilot_tab_fallback = ""
--        vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
--        vim.keymap.set("i", "<C-Right>", 'copilot#Accept("<C-Right>")', { expr = true, silent = true })
--    end,
--}

-- zbirenbaum/copilot.lua
return {
  -- GitHub Copilot core plugin
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<C-j>",
            next = "<C-l>",
            prev = "<C-h>",
            dismiss = "<C-]>",
          },
        },
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            open = "<C-/>",
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
          },
        },
        filetypes = {
          markdown = true,
          help = true,
          gitcommit = true,
        },
      })
    end,
  },

  -- Integration of Copilot into cmp
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
