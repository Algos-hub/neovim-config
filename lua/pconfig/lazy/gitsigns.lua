return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup({
            signcolumn = true,
            on_attach = function()
                vim.wo.signcolumn = "yes"
                vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:v:lnum} %s"
                vim.cmd(":highlight GitSignsAdd ctermbg=NONE ctermfg=green")
                vim.cmd(":highlight GitSignsDelete ctermbg=NONE ctermfg=red")
                vim.cmd(":highlight GitSignsChange ctermbg=NONE ctermfg=darkyellow")
            end
        })
    end
}
