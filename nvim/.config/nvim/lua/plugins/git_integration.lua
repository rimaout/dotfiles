return {

    ---------- GITSIGNS ----------
    -- left line color change + change preview
    {
        "lewis6991/gitsigns.nvim",

        keys = {
            { "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "to-dooooooooo" } },
        },
    },

    ---------- VIM FUGITIVE ----------
    -- use git commands in vim (write :Git)
    {
        "tpope/vim-fugitive",
    },
}
