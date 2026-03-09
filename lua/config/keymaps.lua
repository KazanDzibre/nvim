-- Set leader key
vim.g.mapleader = " "

-- Basic keymaps
local keymap = vim.keymap.set

-- Better navigation
keymap("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- Copy to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })

-- Paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
keymap({"n", "v"}, "<leader>P", '"+P', { desc = "Paste before from system clipboard" })

-- Better indentation
keymap("v", "<", "<gv", { desc = "Indent left and reselect" })
keymap("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Clear search highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- Switch between last two files (Ctrl+B)
keymap("n", "<C-b>", "<C-^>", { desc = "Switch to last file" })

-- Alternative: If you want to see the filename when switching
-- keymap("n", "<C-b>", "<C-^>:echo 'Switched to ' . expand('%')<CR>", { desc = "Switch to last file" })

-- Buffer navigation
keymap("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>bc", "<Cmd>BufferLinePickClose<CR>", { desc = "Close buffer" })
keymap("n", "<leader>bp", "<Cmd>BufferLinePick<CR>", { desc = "Pick buffer" })

-- Move buffers
keymap("n", "<leader>bm", "<Cmd>BufferLineMoveNext<CR>", { desc = "Move buffer right" })
keymap("n", "<leader>bn", "<Cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })

-- Close others
keymap("n", "<leader>bo", "<Cmd>BufferLineCloseLeft<CR>", { desc = "Close left buffers" })
keymap("n", "<leader>bO", "<Cmd>BufferLineCloseRight<CR>", { desc = "Close right buffers" })
keymap("n", "<leader>ba", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })

-- Add these to your keymaps.lua

-- Close current buffer
keymap("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" })
keymap("n", "<leader>bD", "<cmd>bd!<CR>", { desc = "Force close buffer" })

-- List buffers
keymap("n", "<leader>bl", "<cmd>ls<CR>", { desc = "List buffers" })

-- If you add bufferline, you'll also have:
-- <leader>bc - Pick a buffer to close
-- <leader>ba - Close all other buffers


