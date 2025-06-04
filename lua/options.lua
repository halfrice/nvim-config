vim.cmd("let g:netrw_liststyle = 3")

-- backspace
vim.opt.backspace = "indent,eol,start" -- how backspace works at start of line

-- backups
-- vim.opt.backup = false -- keep backup file after overwriting a file
-- vim.opt.hidden = true -- don't unload buffer when it is abandoned
-- vim.opt.swapfile = false -- whether to use a swapfile for a buffer
-- vim.opt.updatetime = 100 -- after this many milliseconds flush swap file

-- clipboard
vim.opt.clipboard:append("unnamed,unnamedplus") -- use the clipboard as the unnamed register

-- files
vim.opt.fileencoding = "utf-8" -- file encoding for multibyte text

-- indentation
vim.opt.autoindent = true -- take indent for new line from previous line
vim.opt.expandtab = true -- use spaces when <Tab> is inserted
vim.opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step
vim.opt.tabstop = 2 -- number of spaces that <Tab> in file uses

-- lines
vim.opt.cursorline = true -- highlight the screen line of the cursor
vim.opt.number = true -- print the line number in front of each line
vim.opt.relativenumber = true -- show relative line number in front of each line
vim.opt.wrap = false -- long lines wrap and continue on the next line 

-- mouse
vim.opt.mouse = "a" -- enable the use of mouse clicks

-- scroll
vim.opt.scrolloff = 8 -- minimum number of lines above and below cursor

-- search
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.incsearch = true -- highlight match while typing search pattern
vim.opt.smartcase = true -- no ignore case when pattern has uppercase

-- style
vim.opt.background = "dark" -- "dark" or "light", used for highlight colors 
vim.opt.laststatus = 3 -- tells when last window has status lines (3: always and ONLY the last window)
vim.opt.signcolumn = "yes" -- when and how to display the sign column (yes: always)
vim.opt.termguicolors = true -- enable 24-bit RGB color in the TUI

-- windows
vim.opt.splitbelow = true -- new window from split is below the current one
vim.opt.splitright = true -- new window is put right of the current one

