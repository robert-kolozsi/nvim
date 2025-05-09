-- Packer old
--local status_ok, comment = pcall(require, "Comment")
--if not status_ok then
--  return
--end
--
--comment.setup {
--  pre_hook = function(ctx)
--    local U = require "Comment.utils"
--
--    local location = nil
--    if ctx.ctype == U.ctype.block then
--      location = require("ts_context_commentstring.utils").get_cursor_location()
--    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
--      location = require("ts_context_commentstring.utils").get_visual_start_location()
--    end
--
--    return require("ts_context_commentstring.internal").calculate_commentstring {
--      key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
--      location = location,
--    }
--  end,
--}

-- Lazy
return {
    {
        "numToStr/Comment.nvim",
        event = {"BufReadPost", "BufNewFile"},
        config = true -- runs require('Comment').setup()
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            signs = true,
            keywords = {
                FIX = { icon = " ", color = "error", alt = { "BUG", "FIXME", "ISSUE" } },
                TODO = { icon = " ", color = "info" },
                HACK = { icon = " ", color = "warning" },
                WARN = { icon = " ", color = "warning" },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" }, color = "warning" },
                NOTE = { icon = " ", color = "hint" },
                TEST = { icon = "⏲ ", color = "test" },
            }
        }
    },
}
