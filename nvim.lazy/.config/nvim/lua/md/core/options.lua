local opt = vim.opt

-- line numbers

opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

opt.signcolumn = "yes"
opt.cursorline = true

-- Case insesitibe searching UNLESS C capital in search
opt.ignorecase = true
opt.smartcase = true

-- Break indent enable
opt.breakindent = true

-- Enbale muse mode
opt.mouse = 'a'

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

--Set highlight on search
opt.hlsearch = false
