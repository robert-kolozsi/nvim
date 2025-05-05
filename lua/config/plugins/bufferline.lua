-- Lazy
return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = function(_, opts)
            opts.options = {
                mode = "buffers",
                themable = true,
                numbers = "ordinal",
                indicator = {
                    icon = '▎', -- this should be omitted if indicator style is not 'icon'
                    style = 'icon' -- | 'underline' | 'none',
                },
                buffer_close_icon = '󰅖',
                modified_icon = '● ',
                close_icon = ' ',
                left_trunc_marker = ' ',
                right_trunc_marker = ' ',
                diagnostics = false,
                color_icons = true, -- whether or not to add the filetype icon highlights
                show_buffer_icons = true, -- disable filetype icons for buffers
                separator_style = "slant" -- | "slope" | "thick" | "thin" | { 'any', 'any' },
            }

            opts.highlights = {
            fill = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },
            background = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },

            -- buffer_selected = {
            --   fg = {attribute='fg',highlight='#ff0000'},
            --   bg = {attribute='bg',highlight='#0000ff'},
            --   gui = 'none'
            --   },
            buffer_visible = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },

            close_button = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },
            close_button_visible = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },
            -- close_button_selected = {
            --   fg = {attribute='fg',highlight='TabLineSel'},
            --   bg ={attribute='bg',highlight='TabLineSel'}
            --   },

            tab_selected = {
                fg = { attribute = "fg", highlight = "Normal" },
                bg = { attribute = "bg", highlight = "Normal" },
            },
            tab = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },
            tab_close = {
                -- fg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
                fg = { attribute = "fg", highlight = "TabLineSel" },
                bg = { attribute = "bg", highlight = "Normal" },
            },

            duplicate_selected = {
                fg = { attribute = "fg", highlight = "TabLineSel" },
                bg = { attribute = "bg", highlight = "TabLineSel" },
                italic = true,
            },
            duplicate_visible = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
                italic = true,
            },
            duplicate = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
                italic = true,
            },

            modified = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },
            modified_selected = {
                fg = { attribute = "fg", highlight = "Normal" },
                bg = { attribute = "bg", highlight = "Normal" },
            },
            modified_visible = {
                fg = { attribute = "fg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },

            separator = {
                fg = { attribute = "bg", highlight = "TabLine" },
                bg = { attribute = "bg", highlight = "TabLine" },
            },
            separator_selected = {
                fg = { attribute = "bg", highlight = "Normal" },
                bg = { attribute = "bg", highlight = "Normal" },
            },
            -- separator_visible = {
            --   fg = {attribute='bg',highlight='TabLine'},
            --   bg = {attribute='bg',highlight='TabLine'}
            --   },
            indicator_selected = {
                fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
                bg = { attribute = "bg", highlight = "Normal" },
            },
        }
        end
}
