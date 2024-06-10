return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signcolumn = true,
			on_attach = function()
				vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:v:lnum} %s"
				vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
				vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "green", bg = "none" })
				vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "red", bg = "none" })
				vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "orange", bg = "none" })
			end,
			current_line_blame = true,
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol",
				delay = 500,
				ignore_whitespace = false,
				virt_text_priority = 100,
			},
		})
	end,
}
