return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			-- Overriding the default color scheme given by solarized.nvim
			local set_hl_for_floating_window = function()
				vim.api.nvim_set_hl(0, "NormalFloat", {
					link = "Normal",
				})
				vim.api.nvim_set_hl(0, "FloatBorder", {
					bg = "none",
				})
			end

			set_hl_for_floating_window()

			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "*",
				desc = "Avoid overwritten by loading color schemes later",
				callback = set_hl_for_floating_window,
			})
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Add rounded border on hover and on signature help popup window
			local handlers = {
				["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
				["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
			}

			-- Add rounded border to the diagnostic popup window
			vim.diagnostic.config({
				virtual_text = {
					prefix = "■", -- Could be '●', '▎', 'x', '■', , 
				},
			})

			-- Set up lspconfig.
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = {
					"tsserver",
					"yamlls",
					"sqlls",
					"phpactor",
					"pyre",
					"kotlin_language_server",
					"jsonls",
					"html",
					"eslint",
					"cssmodules_ls",
					"cssls",
					"clangd",
					"angularls",
					"vimls",
					"lua_ls",
				},

				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = capabilities,
							handlers = handlers,
						})
					end,
					["lua_ls"] = function()
						local lspconfig = require("lspconfig")
						lspconfig.lua_ls.setup({
							capabilities = capabilities,
							handlers = handlers,
							settings = {
								Lua = {
									runtime = { version = "Lua 5.1" },
									diagnostics = {
										globals = { "vim", "it", "describe", "before_each", "after_each" },
									},
								},
							},
						})
					end,
				},
			})

			vim.api.nvim_create_autocmd("LspAttach", {

				group = vim.api.nvim_create_augroup("UserLspConfig", {}),

				callback = function(ev)
					local client = vim.lsp.get_client_by_id(ev.data.client_id)

					client.server_capabilities.semanticTokensProvider = nil

					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "<C-m>", vim.lsp.buf.signature_help, opts)
					vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
					vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
					vim.keymap.set("n", "<leader>wl", function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, opts)
					vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
					vim.keymap.set("n", "<leader>F", function()
						vim.lsp.buf.format({ async = true })
					end, opts)
				end,
			})
		end,
	},
}
