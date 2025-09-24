return {
	"ahmedkhalf/project.nvim",
    keys = {
        { "<leader>fp", "<CMD>Telescope projects<CR>", { desc = "[F]ind [P]roject" } }
    },

	init = function()
		require("project_nvim").setup({})
		require("telescope").load_extension("projects")
	end,
}
