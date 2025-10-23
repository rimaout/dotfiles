-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Indenting settings
vim.opt.expandtab = true    -- Use spaces instead of tabs for indentation
vim.opt.tabstop = 4         -- Set the width of a tab character to 4 spaces
vim.opt.softtabstop= 4      -- Set the number of spaces a tab counts for while editing
vim.opt.shiftwidth = 4      -- Set the number of spaces to use for each step of indentation
vim.opt.smarttab = true     -- ?
vim.opt.smartindent = true  -- ?
vim.opt.autoindent = true   -- ?

-- Line numbers
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Enable relative line numbers
vim.opt.cursorline = true       -- Highlight the current line

-- Search settings (command "/")
vim.opt.hlsearch = true     -- Highlight all matches of the previous search
vim.opt.incsearch = true    -- Show matches while typing the search
vim.opt.ignorecase = true   -- Case insensitive search
vim.opt.smartcase = true    -- ?

-- Style
vim.g.have_nerd_font = true     -- Set to true if you have a Nerd Font installed and selected in the terminal
vim.opt.termguicolors = true    -- enable 24-bit RGB color in the terminal
vim.opt.wrap = false            -- disable line wrapping (disble go new line if line is too long)
vim.opt.scrolloff = 8           -- keep 8 lines above and below the cursor}
vim.opt.showmode = false        -- Hide mode message (i use lualine statusline instead)
vim.opt.winborder = 'single'    -- add border to floating windows

-- Configure how new splits should be opened
vim.opt.splitright = true   -- default is to open new vertical splits to the left
vim.opt.splitbelow = true   -- default is to open new horizontal splits above

-- Automatic closing rackets
vim.cmd('inoremap " ""<left>')
vim.cmd("inoremap ' ''<left>")
vim.cmd("inoremap ( ()<left>")
vim.cmd("inoremap [ []<left>")
vim.cmd("inoremap { {}<left>")
vim.cmd("inoremap {<CR> {<CR>}<ESC>O")
vim.cmd("inoremap {;<CR> {<CR>};<ESC>O")

-- Safety
vim.opt.confirm = true  -- Confirm before closing unsaved files
vim.opt.undofile = true -- Undo hostory is saved even if you close the file

-- Disable Mouse
vim.opt.mouse = '' -- Disable mouse support
--vim.opt.mouse = "a" -- Enable mouse mode, useful for resising window splits
