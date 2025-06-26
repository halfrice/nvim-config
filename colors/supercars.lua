-- SUPERCARS
-- created on https://nvimcolors.com

-- Clear existing highlights and reset syntax
vim.cmd('highlight clear')
vim.cmd('syntax reset')

-- Basic UI elements
vim.cmd('highlight Normal guibg=#03030a guifg=#c0caf5')
vim.cmd('highlight NonText guibg=#03030a guifg=#03030a')
vim.cmd('highlight CursorLine guibg=#16161d')
vim.cmd('highlight LineNr guifg=#404047')
vim.cmd('highlight CursorLineNr guifg=#9af95d')
vim.cmd('highlight SignColumn guibg=#03030a')
vim.cmd('highlight StatusLine gui=bold guibg=#16161d guifg=#28f877')
vim.cmd('highlight StatusLineNC gui=bold guibg=#16161d guifg=#1f874a')
vim.cmd('highlight Directory guifg=#ff0060')
vim.cmd('highlight Visual guibg=#36363c')
vim.cmd('highlight Search guibg=#79a2f7 guifg=#16161d')
vim.cmd('highlight CurSearch guibg=#9af95d guifg=#16161d')
vim.cmd('highlight IncSearch gui=None guibg=#9af95d guifg=#16161d')
vim.cmd('highlight MatchParen guibg=#79a2f7 guifg=#16161d')
vim.cmd('highlight Pmenu guibg=#16161d guifg=#79a2f7')
vim.cmd('highlight PmenuSel guibg=#9af95d guifg=#16161d')
vim.cmd('highlight PmenuSbar guibg=#9af95d guifg=#36363c')
vim.cmd('highlight VertSplit guifg=#16161d')
vim.cmd('highlight MoreMsg guifg=#ff0060')
vim.cmd('highlight Question guifg=#ff0060')
vim.cmd('highlight Title guifg=#28f877')

-- Syntax highlighting
vim.cmd('highlight Comment guifg=#565f89 gui=italic')
vim.cmd('highlight Constant guifg=#f2f327')
vim.cmd('highlight Identifier guifg=#28f877')
vim.cmd('highlight Statement guifg=#8400e9')
vim.cmd('highlight PreProc guifg=#8400e9')
vim.cmd('highlight Type guifg=#79a2f7 gui=None')
vim.cmd('highlight Special guifg=#ff0060')

-- Refined syntax highlighting
vim.cmd('highlight String guifg=#00ffce')
vim.cmd('highlight Number guifg=#28f877')
vim.cmd('highlight Boolean guifg=#ffc33c')
vim.cmd('highlight Function guifg=#ff0060')
vim.cmd('highlight Keyword guifg=#0690ff gui=italic')

-- Html syntax highlighting
vim.cmd('highlight Tag guifg=#ff0060')
vim.cmd('highlight @tag.delimiter guifg=#ff0060')
vim.cmd('highlight @tag.attribute guifg=#79a2f7')

-- Messages
vim.cmd('highlight ErrorMsg guifg=#ff0055')
vim.cmd('highlight Error guifg=#ff0055')
vim.cmd('highlight DiagnosticError guifg=#ff0055')
vim.cmd('highlight DiagnosticVirtualTextError guibg=#1c0312 guifg=#ff0055')
vim.cmd('highlight WarningMsg guifg=#ffc33c')
vim.cmd('highlight DiagnosticWarn guifg=#ffc33c')
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=#1c160f guifg=#ffc33c')
vim.cmd('highlight DiagnosticInfo guifg=#79a2f7')
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=#0f1322 guifg=#79a2f7')
vim.cmd('highlight DiagnosticHint guifg=#00ffce')
vim.cmd('highlight DiagnosticVirtualTextHint guibg=#031c1e guifg=#00ffce')
vim.cmd('highlight DiagnosticOk guifg=#28f877')

-- Common plugins
vim.cmd('highlight CopilotSuggestion guifg=#565f89') -- Copilot suggestion
vim.cmd('highlight TelescopeSelection guibg=#36363c') -- Telescope selection
