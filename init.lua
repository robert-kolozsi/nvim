-- Plugins
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.marks"

--
-- Temporary solution for showing mark letters in a gutter (signcolumn)
-- local function placeMarkSign(mark, line)
--     local sign_id = 'mark_' .. mark
-- 
--     vim.cmd('sign define ' .. sing_id.. ' text=' .. mark)
--     vim.cmd('sign place ' .. line .. ' line=' .. line .. ' name=' .. sign_id .. ' buffer=' .. vim.fn.bufnr(''))
-- end
-- 
-- vim.cmd([[command! -nargs=1 -complete=file MyMark execute 'lua placeMarkSign("'' .. <args> .. ", line("."))']])
--
