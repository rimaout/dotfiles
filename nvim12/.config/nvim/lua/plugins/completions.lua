vim.pack.add({
	{ src = "https://github.com/Saghen/blink.cmp" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
})

require("luasnip.loaders.from_vscode").lazy_load()
require("blink.cmp").setup({
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)

    keymap = { preset = "super-tab" },
    appearance = { nerd_font_variant = "mono" },
	completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },
    signature = { enabled = true },
    fuzzy = { implementation = "prefer_rust_with_warning" },

	menu = {
		auto_show = true,
		draw = {
			treesitter = { "lsp" },
			columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
        }
    }
})

----- KEYMAPS -----

vim.keymap.set('n', '<leader>fr', vim.lsp.buf.format, { desc = "[F]o[R]mat the Code in the current file" })
{ "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]action" } },
{ "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[N]ame word under cursor across files" } },
{ "grr", require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' } },      -- Find references for the word under your cursor.
{ "grd", require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' } },      --  This is where a variable was first declared, or where a function is defined, etc. oss: To jump back, press <C-t>.














