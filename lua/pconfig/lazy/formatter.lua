return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Formatting
                null_ls.builtins.formatting.htmlbeautifier,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.formatting.pretty_php,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.ktlint,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.sqlfluff.with({
                    extra_args = { "--dialect", "postgres" },
                }),
                -- Diagnostics
                null_ls.builtins.diagnostics.stylelint,
                null_ls.builtins.diagnostics.ktlint,
                require("none-ls.diagnostics.eslint"),
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end
            end,
        })
    end,
}
