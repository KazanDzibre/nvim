-- lua/config/lazy.lua
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Set leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Basic options (including clipboard)
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard
vim.opt.mouse = "a"                 -- Enable mouse
vim.opt.ignorecase = true           -- Ignore case in search
vim.opt.smartcase = true            -- Override ignorecase if search contains uppercase
vim.opt.number = true                -- Show line numbers
vim.opt.relativenumber = true        -- Relative line numbers
vim.opt.tabstop = 4                  -- Number of spaces tabs count for
vim.opt.softtabstop = 4              -- Number of spaces tab counts for while editing
vim.opt.shiftwidth = 4               -- Number of spaces for autoindent
vim.opt.expandtab = true              -- Use spaces instead of tabs
vim.opt.wrap = false                  -- Don't wrap lines
vim.opt.termguicolors = true          -- Enable 24-bit RGB colors

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = false,    -- Don't lazy-load core plugins
    version = false, -- Always use latest git commit
  },
  rocks = {
    enabled = false,  -- This disables LuaRocks and removes the warnings
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true }, -- Check for updates
  change_detection = {
    notify = false,  -- Don't notify when changing config files
  },
})

