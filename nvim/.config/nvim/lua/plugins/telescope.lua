return {

	-- TELESCOPE --
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },

		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
            vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			-- warning: remeber to install ripgrep
		end,
	},

	-- TELESCOPE UI --
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = { ["ui-select"] = { require("telescope.themes").get_dropdown({}) } },
				require("telescope").load_extension("ui-select"),
			})
		end,
	},

	-- TELESCOPE FILE BROWSER
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

		config = function()
			vim.keymap.set("n", "<C-n>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
		end,
	},
}
