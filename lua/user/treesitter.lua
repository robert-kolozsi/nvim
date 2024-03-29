local configs = require("nvim-treesitter.configs")

require('ts_context_commentstring').setup {
    enable_autocmd = false,
}

configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = {"python"}, -- originally it was true

  },
  indent = { enable = true , disable = { "yaml", "python" }},
}
