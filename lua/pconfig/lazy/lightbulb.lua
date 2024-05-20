return {
    'kosayoda/nvim-lightbulb',
    lazy = false,
    config = function()
        require("nvim-lightbulb").setup({
            autocmd = { enabled = true },
            sign = {
                enabled = false,
            },

            virtual_text = {
                enabled = true,
            }
        })
    end,
}