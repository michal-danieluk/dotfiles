local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


local g = vim.g
local o = vim.o
local opt = vim.opt

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
-- vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 200
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
-- o.termguicolors = true
-- o.background = 'dark'
o.background = ""

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
vim.o.timeoutlen = 500

-- Number of screen lines to keep above and below the cursor
vim.o.scrolloff = 8

-- Better editor UI
vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true

-- Better editing experience
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.cindent = true
vim.o.autoindent = true
vim.o.wrap = true
vim.o.textwidth = 300
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = -1 -- If negative, shiftwidth value is used
vim.o.list = true
vim.o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- o.listchars = 'eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,'
-- o.formatoptions = 'qrn1'

-- Makes neovim and host OS clipboard play nicely with each other
vim.o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Undo and backup options
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
vim.o.history = 50

-- Better buffer splitting
vim.o.splitright = true
vim.o.splitbelow = true

-- Preserve view while jumping
-- BUG This option causes an error!
-- o.jumpoptions = 'view'

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1
--
-- opt.mouse = "a"
-- Astro
-- vim.g.astro_typescript = 'enable'
-- vim.g.astro_stylus = 'enable'

-- Map <leader> to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd('colorscheme kanagawa-dragon')
-- vim.opt.colorcolumn = "80"

