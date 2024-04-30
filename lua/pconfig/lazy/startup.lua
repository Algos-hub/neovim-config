return {
    "startup-nvim/startup.nvim",
    dependecies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("startup").setup(
            {
                theme = 'evil'
            })
    end
}
