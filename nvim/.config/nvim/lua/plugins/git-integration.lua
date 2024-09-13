return {

	---------- GITSIGNS ----------
	-- left line color change + change preview
	{
		"lewis6991/gitsigns.nvim",

		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
		end,
	},

	---------- VIM FUGITIVE ----------
	-- use git commands in vim (write :Git)
	{
		"tpope/vim-fugitive",
	},
}
