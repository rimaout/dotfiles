-- Vim Settings --

vim.cmd("set expandtab") 	-- space as tabs
vim.cmd("set tabstop=4") 	-- 4 spaces for a tab
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "        -- set leader key to space

vim.wo.number = true         -- show line numbers
vim.wo.relativenumber = true -- show relative line numbers



-- Lazy Config --

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")



-- Key Bindings 

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>') 

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- Use fuzy find with control-p (telescope)
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})  -- Use find in file with cotrol-f (telescope)

vim.keymap.set('n', '<C-d>', ':Neotree filesystem reveal left<CR>', {}) -- Open file explorer (Neotree)
vim.keymap.set("n", "<C-k>", ":Neotree buffers reveal float<CR>", {}) -- Open buffer explorer (Neotree)

