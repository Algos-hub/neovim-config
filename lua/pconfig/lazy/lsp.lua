return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'kosayoda/nvim-lightbulb',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
        'hrsh7th/vim-vsnip-integ',
    },

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

	-- Enabling + auto-complete 
	local cmp = require'cmp'

	cmp.setup({
		snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) 
		end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'vsnip' }, 
		}, {
			{ name = 'buffer' },
		})
  })

  -- Set configuration for specific filetype.
	cmp.setup.filetype('gitcommit', {
		sources = cmp.config.sources({
			{ name = 'git' },
		}, {
			{ name = 'buffer' },
		})
	})

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ '/', '?' }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		}
	})

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(':', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = 'path' }
		}, {
			{ name = 'cmdline' }
		})
	})

  -- Set up lspconfig.
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
  
	require('mason').setup()

	require('mason-lspconfig').setup({
		ensure_installed = {
			'tsserver',
			'yamlls',
			'sqlls',
			'intelephense',
			'pyre',
			'kotlin_language_server',
			'jsonls',
			'html',
			'eslint',
			'cssmodules_ls',
			'cssls',
			'clangd',
			'angularls',
			'vimls'
			}
		})

	local lspconfig = require('lspconfig')
  
	lspconfig.tsserver.setup {
		capabilities = capabilities
	}
	lspconfig.yamlls.setup {
		capabilities = capabilities
	}
	lspconfig.sqlls.setup {
		capabilities = capabilities
	}
	lspconfig.intelephense.setup {
		capabilities = capabilities
	}
	lspconfig.pyre.setup {
		capabilities = capabilities
	}
	lspconfig.kotlin_language_server.setup {
		capabilities = capabilities
	}
	lspconfig.jsonls.setup {
		capabilities = capabilities
	}
	lspconfig.html.setup {
		capabilities = capabilities
	}
	lspconfig.eslint.setup {
		capabilities = capabilities
	}
	lspconfig.cssmodules_ls.setup {
		capabilities = capabilities
	}
	lspconfig.cssls.setup {
		capabilities = capabilities
	}
	lspconfig.clangd.setup {
		capabilities = capabilities
	}
	lspconfig.vimls.setup {
		capabilities = capabilities
	}
	lspconfig.angularls.setup {
		capabilities = capabilities
	}
	
	vim.api.nvim_create_autocmd('LspAttach', {

	group = vim.api.nvim_create_augroup('UserLspConfig', {}),

	callback = function(ev)

		local client = vim.lsp.get_client_by_id(ev.data.client_id)

		client.server_capabilities.semanticTokensProvider = nil

    -- Enable completion triggered by <c-x><c-o>

		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', '<space>f', function()
		vim.lsp.buf.format { async = true }
		end, opts)
	 end,
	})
end
}
