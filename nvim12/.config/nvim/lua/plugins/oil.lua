vim.pack.add({ 'https://github.com/stevearc/oil.nvim' })
require("oil").setup()

vim.keymap.set('n', '<leader>e', '<CMD>Oil --float<CR>', { desc = '[E]xplore [F]iles in parent directory' })
