return {
    "stevearc/oil.nvim",

    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys ={
        { "<leader>fe", "<CMD>Oil --float<CR>", { desc = "[E]xplore [F]iles in parent directory" } },
    },

    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
