vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

require("nvim-treesitter.configs").setup({
    auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },

    -- incremental_selection (press <Enter> to select a node, <Backspace> to unselect)
	incremental_selection = {
	enable = true,
	keymaps = {
	    init_selection = "<Enter>",
        node_incremental = "<Enter>",
		scope_incremental = false,  -- set to `false` to disable one of the mappings 
		node_decremental = "<Backspace>",
		},
	},
})
