return {
    "stevearc/oil.nvim",
    lazy = false,   -- load at startup

    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys ={
        { "<leader>fe", "<CMD>Oil --float<CR>", { desc = "[E]xplore [F]iles in parent directory" } },
    },
}
