vim.pack.add({
    { src = 'https://github.com/lewis6991/gitsigns.nvim' }, -- left line color change + change preview
    { src = 'https://github.com/tpope/vim-fugitive' }       -- use git commands in vim (ex :Git add .)
})

vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', { desc = '[G]it preview [H]unk' })
vim.keymap.set('n', '<leader>gb', ':Gitsigns blame<CR>', { desc = '[G]it show [B]lame' })
