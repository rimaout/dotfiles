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
        "stylua",        -- lua code formatter

        "ts_ls",         --
        "html",          -- html language server
        "prettier",      -- js ts css html md json ... formatter

        "pyright",       -- python language server
        "black",         -- python code formatter
        "isort",         -- python inport formatter

        "clangd",        -- c/c++ language server

        "rust_analyzer", -- rust language server

        "gopls"          -- go language server
    }
})

-- KEYMAPS --

vim.keymap.set('n', '<leader>fr', vim.lsp.buf.format, { desc = "[F]o[R]mat the Code in the current file" })
vim.keymap.set('v', '<leader>fr', vim.lsp.buf.format, { desc = "[F]o[R]mat the Code in the current file" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "[C]ode [A]action" })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "[R]e[N]ame word under cursor across files" })
vim.keymap.set('n', 'grr',        require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })      -- Find references for the word under your cursor.
vim.keymap.set('n', 'grd',        require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' })      --  This is where a variable was first declared, or where a function is defined, etc. oss: To jump back, press <C-t>.

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
