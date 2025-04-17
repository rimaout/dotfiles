-- Tab key setting 
vim.cmd("set expandtab")         -- Use spaces instead of tabs for indentation
vim.cmd("set tabstop=4")         -- Set the width of a tab character to 4 spaces
vim.cmd("set softtabstop=4")     -- Set the number of spaces a tab counts for while editing
vim.cmd("set shiftwidth=4")      -- Set the number of spaces to use for each step of indentation

-- Automatic closing rackets
vim.cmd('inoremap " ""<left>')
vim.cmd("inoremap ' ''<left>")
vim.cmd("inoremap ( ()<left>")
vim.cmd("inoremap [ []<left>")
vim.cmd("inoremap { {}<left>")
vim.cmd("inoremap {<CR> {<CR>}<ESC>O")
vim.cmd("inoremap {;<CR> {<CR>};<ESC>O")

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight searcher
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- General settings
vim.opt.termguicolors = true -- enable 24-bit RGB color in the terminal
vim.opt.wrap = false  -- disable line wrapping
vim.opt.scrolloff = 8 -- keep 8 lines above and below the cursor
