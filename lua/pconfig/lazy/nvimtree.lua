return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            hijack_cursor = true,
            disable_netrw = true,
            view = {
                number = true,
                relativenumber = true,
                float = {
                    enable = true,
                    open_win_config = function()
                        return {
                            border = "rounded",
                            relative = "editor",
                            row = 0,
                            col = vim.opt.columns:get(),
                            width = 50,
                            height = (vim.opt.lines:get() - vim.opt.cmdheight:get()) - 2,
                        }
                    end,
                },
            },

            diagnostics = {
                enable = true,
                show_on_dirs = true,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },

            log = {
                enable = true,
                truncate = true,
                types = {
                    diagnostics = true,
                },
            },

            renderer = {
                group_empty = true,
                indent_width = 4,
                highlight_opened_files = "all",
                indent_markers = {
                    enable = true,
                },
            },

            filters = {
                dotfiles = false,
            },
        })
        local api = require("nvim-tree.api")
        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
        vim.keymap.set({ "n", "v", "o" }, "<C-f>", function()
            api.tree.toggle()
        end, {})
    end,
}
