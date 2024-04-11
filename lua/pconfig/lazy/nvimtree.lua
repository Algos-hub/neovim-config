return {
    'nvim-tree/nvim-tree.lua',
    version = "*",
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup({
            hijack_cursor = true,
            disable_netrw = true,
            view = {
                width = 50,
                side = "right",
                number = true,
                relativenumber = true,
            },
            renderer = {
                group_empty = true,
                indent_width = 4,
                highlight_opened_files = "all",
                indent_markers = {
                    enable = true,
                },
            },
        })
    end
}
