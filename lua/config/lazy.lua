-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
    { import = "config.plugins" },
    { import = "config.plugins.lsp"},
})
  --{
  --spec = {
  --  -- import your plugins
  --  { import = "plugins" },

  --  --{ import = "~/.local/share/nvim" },
  --  --{ import = "User/robertkolozsi/.local/share/nvim" },
  --},
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  --install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  --checker = { enabled = true },

  --"wbthomason/packer.nvim", -- Have packer manage itself
  -- "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  -- "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  -- "windwp/nvim-autopairs",
  -- "numToStr/Comment.nvim",
  -- "kyazdani42/nvim-web-devicons",
  -- "kyazdani42/nvim-tree.lua",
  -- "akinsho/bufferline.nvim",
  -- "moll/vim-bbye",
  -- {"christoomey/vim-tmux-navigator", lazy=false},

  -- -- Colorschemes
  -- --use "lifepillar/vim-solarized8"
  -- --use "lunarvim/colorschemes"
  -- "folke/tokyonight.nvim",

  -- -- Completion plugins
  -- "hrsh7th/nvim-cmp", -- The completion plugin
  -- "hrsh7th/cmp-buffer", -- buffer completions
  -- "hrsh7th/cmp-path", -- path completions
  -- "hrsh7th/cmp-cmdline", -- cmdline completions
  -- "saadparwaiz1/cmp_luasnip", -- snippet completions
  -- "hrsh7th/cmp-nvim-lsp",
  -- "hrsh7th/cmp-nvim-lua",  -- plays nicely with "hrsh7th/nvim-cmp"

  -- -- Snippetes
  -- "L3MON4D3/LuaSnip", --snippet engine
  -- "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- -- LSP
  -- "williamboman/mason.nvim",
  -- "williamboman/mason-lspconfig.nvim",
  -- "neovim/nvim-lspconfig",
  -- "jose-elias-alvarez/null-ls.nvim", -- for formatters and linters

  -- -- DAP, formatter, linter
  -- "mfussenegger/nvim-dap",
  -- "rcarriga/nvim-dap-ui",
  -- "mfussenegger/nvim-lint",
  -- "mhartington/formatter.nvim",

  -- -- Telescope
  -- "nvim-telescope/telescope.nvim",
  -- "nvim-telescope/telescope-media-files.nvim",
  -- "nvim-telescope/telescope-live-grep-args.nvim",

  -- -- Treesitter
  -- {"nvim-treesitter/nvim-treesitter", run="TSUpdate",},
  -- "JoosepAlviste/nvim-ts-context-commentstring",  -- This is more to JS and its framework

  -- -- Git
  -- "lewis6991/gitsigns.nvim",

  -- -- Marks in file
  -- "chentoast/marks.nvim",

  -- "nvim-lualine/lualine.nvim",

  -- {
  --     "kylechui/nvim-surround",
  --     tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  --     config = function()
  --         require("nvim-surround").setup({
  --             -- Configuration here, or leave empty to use defaults
  --         })
  --     end
  -- },

  -- "github/copilot.vim"
--})
