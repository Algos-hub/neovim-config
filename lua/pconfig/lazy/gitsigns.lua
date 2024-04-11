return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup({
            signcolumn = true,
            on_attach = function()
                vim.wo.signcolumn = "yes"
                vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:v:lnum} %s"
                vim.cmd(":highlight GitSignsAdd guibg=NONE guifg=green")
                vim.cmd(":highlight GitSignsDelete guibg=NONE guifg=red")
                vim.cmd(":highlight GitSignsChange guibg=NONE guifg=orange")
            end
        })
    end
}

