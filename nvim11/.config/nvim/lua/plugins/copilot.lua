return {
    -- Copilot completion
    -- Note: ":Copilot setup" to login

    "github/copilot.vim",
    keys = {
        { "<leader>cpe", '<cmd>Copilot enable<CR><cmd>echo "Copilot enabled"<CR>',   { desc = "[C]o[P]ilot [E]nable" } },
        { "<leader>cpd", '<cmd>Copilot disable<CR><cmd>echo "Copilot disabled"<CR>', { desc = "[C]o[P]ilot [D]isable" } },
    },

    -- disable copilot at the start
    config = function()
        vim.cmd("Copilot disable")
    end,
}
