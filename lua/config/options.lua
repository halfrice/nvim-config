-- This file is loaded by ../../init.lua

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- (for this config, double check init.lua and make sure this file is loaded before lazy.nvim)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- disable netrw at the very start of your init.lua (nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Snacks animations
vim.g.snacks_animate = true

local opt = vim.opt

-- Backspace
opt.backspace = 'indent,eol,start' -- how backspace works at start of line

-- Backups & Saves
-- opt.backup = false -- keep backup file after overwriting a file
-- opt.hidden = true -- don't unload buffer when it is abandoned
-- opt.swapfile = false -- whether to use a swapfile for a buffer
-- opt.updatetime = 100 -- after this many milliseconds flush swap file
opt.autowrite = true -- Write contents of a file if it has been modified
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.undofile = true -- Saves and restores undo history to and from a file
opt.undolevels = 10000 -- Maximum number of changes that can be undone
opt.updatetime = 200 -- If nothing is typed (in ms) the swap file is written

-- Clipboard
opt.clipboard:append('unnamed,unnamedplus') -- use the clipboard as the unnamed register

-- Files
opt.fileencoding = 'utf-8' -- file encoding for multibyte text

-- Indentation
-- vim.opt.autoindent = true -- take indent for new line from previous line
opt.expandtab = true -- use spaces when <Tab> is inserted
opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step
opt.tabstop = 2 -- number of spaces that <Tab> in file uses
opt.shiftround = true -- Round indent to multiple of shiftwidth
opt.smartindent = true -- Insert indents automatically

-- Lines
opt.cursorline = true -- highlight the screen line of the cursor
opt.number = true -- print the line number in front of each line
opt.relativenumber = true -- show relative line number in front of each line
opt.wrap = false -- long lines wrap and continue on the next line

-- Mouse
opt.mouse = 'a' -- enable the use of mouse clicks
-- Blinking cursor
opt.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait436-blinkoff218-blinkon218-Cursor/lCursor'

-- Scroll
opt.scrolloff = 8 -- minimum number of lines above and below cursor

-- Search
opt.ignorecase = true -- ignore case in search patterns
opt.incsearch = true -- highlight match while typing search pattern
opt.smartcase = true -- no ignore case when pattern has uppercase

-- Style
opt.background = 'dark' -- "dark" or "light", used for highlight colors
opt.laststatus = 3 -- tells when last window has status lines (3: always and ONLY the last window)
opt.signcolumn = 'yes' -- when and how to display the sign column (yes: always)
opt.termguicolors = true -- enable 24-bit RGB color in the TUI
opt.colorcolumn = '80'
opt.ruler = false -- Disable the default ruler
opt.showmode = false -- Dont show mode since we have a statusline

-- Windows
opt.splitbelow = true -- new window from split is below the current one
opt.splitright = true -- new window is put right of the current one
opt.splitkeep = 'screen' -- Determines the scroll behavior when opening, closing or resizing horizontal splits
