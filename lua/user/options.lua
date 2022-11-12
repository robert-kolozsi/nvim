-- Vim settings
local options = {
    background='dark',
    termguicolors = true,
    synmaxcol=0,
    history = 1000,
    undolevels = 1000,
    undofile = true,
    undoreload = 1000,
    undodir = 'undodir',
    expandtab = true,
    smarttab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    shiftround = true,
    cursorline = true,
    encoding = 'utf-8',
    modeline = true,
    modelines = 1,
    showmode = true,
    showcmd = true,
    hidden = true,
    ttyfast = true,
    lazyredraw = true,
    showmatch = true,
    title = true,
    ruler = true,
    relativenumber = true,
    number = true,
    scrolloff = 3,
    list = true,
    -- listchars = {'tab:→', 'eol:⏎,extends:>', 'precedes:<', 'nbsp:☼'},
    linespace = 0,
    matchtime = 3,
    splitbelow = true,
    splitright = true,
    -- fillchars = {'vert:|', 'fold:~', 'diff:-'},
    autoread = true,
    linebreak = true,
    fileformat = 'unix',
    wrap = true,
    fo = {'t'},
    path = {'**'},
    wildmenu = true,
    hlsearch = true,
    incsearch = true,
    smartcase = true,
    termencoding = 'utf-8',
    foldmethod = 'marker',
    foldlevelstart = 0,
    foldmarker = '{{{,}}}',
    foldnestmax = 10,  -- Deepest fold is 10 levels
    foldenable = true,
    foldlevel = 2,
    foldcolumn = '4',
    clipboard = 'unnamedplus',
    wildignore = {'*.pyc', '*_build/*', '*/coverage/*', '*/south_migrations/*', '*/__pycache__/*'},
    pumheight = 10,  -- Makes popupmenu smaller
--    t_Co = 256,
    updatetime = 300,
    timeoutlen = 500,
-- Recommended by COC,
-- vim.api.nvim_set_option('nobackup')
-- vim.api.nvim_set_option('nowritebackup')
}

--vim.opt.shortmess:append "c"
for k, v in pairs(options) do
  vim.opt[k] = v
end

--vim.cmd "set listchars=tab:→\ ,eol:⏎,extends:>,precedes:<,nbsp:☼"

--vim.cmd "set whichwrap+=<,>,[,],h,l"
--vim.cmd [[set iskeyword+=-]]  -- "A Word" includes the - char
--vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- Mapping,
vim.g.mapleader = ','
vim.g.maplocalleader = ','
--vim.api.nvim_set_keymap('i', 'kj', '<esc>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'ff', ':Telescope<cr>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'fg', ':Telescope<cr>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'ff', ':Telescope<cr>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'ff', ':Telescope<cr>', {noremap = true})
--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- LSP
--require'lspconfig'.bashls.setup{} 
--require'lspconfig'.pyright.setup{}
-- require'lspconfig'.css_language_server.setup{}

-- Plugins
--require('pyroby')
