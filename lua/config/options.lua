-- Global settings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.opt.number = true -- Make line numbers default
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.wrap = false

vim.opt.showmode = false -- Don't show the mode, since it's already in the status line

vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.

vim.opt.breakindent = true

-- Convert tabs to spaces
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.smartindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.colorcolumn = '100'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = false
vim.opt.incsearch = true
