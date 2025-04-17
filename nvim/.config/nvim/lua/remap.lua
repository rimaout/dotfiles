---------- Remap keys ---------- 

vim.g.mapleader = " " --remap leader key to space

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open VIM file explorer

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move line up

vim.keymap.set("n", "J", "mzJ`z") -- Append line below at the end of the current line

vim.keymap.set("n", "n", "nzzzv") -- Move to next search result and center it
vim.keymap.set("n", "N", "Nzzzv") -- Move to previous search result and center it

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Move half page down and center iterator
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Move half page up and center iterator

----- Copy and Paste -----

vim.keymap.set("x", "<leader>p", "\"_dP") -- Paste without copying the text

vim.keymap.set("n", "xx", "\"_dd") -- Cut line without copying the text
vim.keymap.set("v", "xx", "\"_dd") -- Cut line without copying the text

vim.keymap.set("n", "x", "\"_d") -- Cut without copying the text
vim.keymap.set("v", "x", "\"_d") -- Cut without copying the text

vim.keymap.set("n", "<leader>y", "\"+y") -- Copy to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y") -- Copy to system clipboard

vim.keymap.set("n", "<leader>d", "\"+d") -- Cut to system clipboard
vim.keymap.set("v", "<leader>d", "\"+d") -- Cut to system clipboard

----- No Arrow Keys -----

vim.keymap.set('', '<up>', function () print('you can do it'); end)
vim.keymap.set('', '<down>', function () print('still in hard mode'); end)
vim.keymap.set('', '<left>', function () print('i believe in you'); end)
vim.keymap.set('', '<right>', function () print('you\'re doing great'); end)
