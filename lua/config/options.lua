
-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = "120"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Mouse
opt.mouse = "a"

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Undo files
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
opt.undofile = true

-- Scroll
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Timeout for key sequences
opt.timeoutlen = 300
opt.updatetime = 100
