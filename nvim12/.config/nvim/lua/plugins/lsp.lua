vim.pack.add {
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/mason-org/mason.nvim' },
	{ src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
	{ src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
}

require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup({
	ensure_installed = {
        "lua_ls",        -- lua language server            
        "stylua",   -- lua code formatter

        "ts_ls",         --
        "html",          -- html language server
        "prettier", -- js ts css html md json ... formatter
        
        "pyright",       -- python language server
        "black",    -- python code formatter
        "isort",    -- python inport formatter

        "clangd",        -- c/c++ language server
        
        "rust_analyzer", -- rust language server
        
        "gopls"          -- go language server 
    }
})

-- Per Language Configuration --

vim.lsp.config('lua_ls', {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {
					'vim',
					'require'
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
