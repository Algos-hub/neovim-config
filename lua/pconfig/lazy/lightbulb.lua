return {
    "kosayoda/nvim-lightbulb",
    lazy = false,
    config = function()
        require("nvim-lightbulb").setup({
            autocmd = { enabled = true },
            hide_in_unfocused_buffer = false,
            sign = {
                enabled = false,
            },

            virtual_text = {
                enabled = true,
            },
            ignore = {
                ft = {
                    "NvimTree_1",
                    "starter",
                },
                actions_without_kind = false,
            },
        })
    end,
}
