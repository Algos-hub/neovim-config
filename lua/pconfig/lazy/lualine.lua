return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local custom_pop_punk = require('lualine.themes.horizon')
        local colors = {
            n_a_background = 'C336FA',
            n_b_background = '2D373E',
            n_b_foreground = 'F6E1F6',
            n_c_foreground = '707191',
            i_a_background = '158CFB',
            i_b_background = '465390',
            i_b_foreground = 'E4E1FD',
            v_a_background = 'FD9C29',
            vrc_b_background = '3B3B3B',
            v_b_foreground = 'CBC8E1',
            r_a_background = 'FFFD38',
            r_b_foreground = 'FFFDD0',
            c_a_background = '09F7A0',
            c_b_foreground = 'DCFFD0',
            d_a_background = '777C87',
            d_b_background = '2F373C',
            d_b_foreground = '8788AB',
            black        = '000000',
        }

        -- Normal mode
        custom_pop_punk.normal = {
            a = { bg = colors.n_a_background, fg = colors.black, },
            b = { bg = colors.n_b_background, fg = colors.n_b_foreground, },
            c = { bg = colors.black, fg = colors.n_c_foreground, },
        }

        -- Insert mode
        custom_pop_punk.insert = {
            a = { bg = colors.i_a_background, fg = colors.black, },
            b = { bg = colors.i_b_background, fg = colors.i_b_foreground, },
        }

        -- Visual mode
        custom_pop_punk.visual = {
            a = { bg = colors.v_a_background, fg = colors.black, },
            b = { bg = colors.vrc_b_background, fg = colors.v_b_foreground, },
        }

        -- Replace mode
        custom_pop_punk.replace = {
            a = { bg = colors.r_a_background, fg = colors.black, },
            b = { bg = colors.vrc_b_background, fg = colors.r_b_foreground },
        }

        -- Command mode
        custom_pop_punk.command = {
            a = { bg = colors.c_a_background, fg = colors.black, },
            b = { bg = colors.vrc_b_background, fg = colors.c_b_foreground, },
        }

        -- Inactive mode
        custom_pop_punk.inactive = {
            a = { bg = colors.n_b_background, fg = colors.n_b_foreground, },
        }

        require('lualine').setup({
            options = {
                theme = custom_pop_punk,
            },
            tabline = {
                lualine_a = {
                    {
                        'buffers',
                        mode = 2,
                    }
                },
                lualine_b = {''},
                lualine_c = {''},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'tabs'}
            }
        })
    end
}
