-- Vim settings
local options = {
    background='dark',
    termguicolors = true,
    textwidth = 79,
    colorcolumn = "+1",
    synmaxcol=0,
    history = 1000,
    undolevels = 1000,
    undofile = true,
    undoreload = 1000,
    undodir = 'undodir',
    cindent = true,
    autoindent = true,
    smartindent = true,
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

    foldenable = true,
    foldmethod = 'indent',
    foldlevelstart = 0,
    foldmarker = '{{{,}}}',
    foldnestmax = 2,  -- Deepest fold is 10 levels
    foldlevel = 4,
    foldcolumn = '4',

    clipboard = 'unnamedplus',
    wildignore = {'*.pyc', '*_build/*', '*/coverage/*', '*/south_migrations/*', '*/__pycache__/*', '*/undodir/*'},
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

