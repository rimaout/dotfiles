return {

    ---------- GITSIGNS ----------
    -- left line color change + change preview
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,  -- This forces immediate loading
        keys = {
            { "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "[G]it preview [H]unk" } },
            { "<leader>gb", ":Gitsigns blame<CR>", { desc = "[G]it show [B]lame" } },
        },
    },

    ---------- VIM FUGITIVE ----------
    -- use git commands in vim (write :Git)
    {
        "tpope/vim-fugitive",
    },
}
