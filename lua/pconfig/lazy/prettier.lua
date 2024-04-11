return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            ["javascript"] = { "prettier" },
            ["javascriptreact"] = { "prettier" },
            ["typescript"] = { "prettier" },
            ["typescriptreact"] = { "prettier" },
            ["vue"] = { "prettier" },
            ["css"] = { "prettier" },
            ["scss"] = { "prettier" },
            ["less"] = { "prettier" },
            ["html"] = { "prettier" },
            ["json"] = { "prettier" },
            ["jsonc"] = { "prettier" },
            ["yaml"] = { "prettier" },
            ["markdown"] = { "prettier" },
            ["markdown.mdx"] = { "prettier" },
            ["graphql"] = { "prettier" },
            ["handlebars"] = { "prettier" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    }
}
