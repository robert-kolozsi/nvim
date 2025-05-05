-- Lazy
local function GetClassName()
    local cursor_pos = vim.fn.getcurpos()
    local line_number = cursor_pos[2]
    local current_indent = vim.fn.indent(line_number)  -- cursor indent

    for i = line_number, 1, -1 do
	local line = vim.api.nvim_buf_get_lines(0, i-1, i, false)[1]
	local indent = vim.fn.indent(i)  -- indent
	local class_name = line:match("^%s*class%s+(%w+)")

	if current_indent >= indent then
	    if class_name then
		return "<" .. class_name .. ">"
	    end
	end
    end
    return ""
end

return {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
        opts.options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        }
        opts.sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {{GetClassName, color={fg='green'}, align='left'}},
            lualine_x = {'filename', 'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        }
        opts.inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {{GetClassName, color={fg='green'}, align='left'}},
            lualine_x = {'filename', 'location'},
            lualine_y = {},
            lualine_z = {}
        }
        opts.tabline = {}
        opts.winbar = {}
        opts.inactive_winbar = {}
        opts.extensions = {}
        --},
    end
    --config = function()
    --    local function UpdateStatsLine()
    --        local result = GetClassName()
    --        vim.wo.statusline = result
    --    end
	-- Refresh status line to display context CLASS name for Python currently!!!
	-- vim.api.nvim_exec([[autocmd CursorMoved * lua UpdateStatsLine()]], false)

    --end
}
