return {
  {
    "tpope/vim-fugitive",
    cmd = { "Gstatus", "Gwrite", "Gdiff", "Gcommit", "Gpush", "Gpull", "Gblame" },
    config = function()
      vim.keymap.set("n", "<leader>gs", ":Gstatus<CR>", { desc = "Git Status" })
      vim.keymap.set("n", "<leader>gd", ":Gdiff<CR>", { desc = "Git Diff" })
      vim.keymap.set("n", "<leader>ga", ":Gwrite<CR>", { desc = "Git Add" })
      vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>", { desc = "Git Commit" })
      vim.keymap.set("n", "<leader>gp", ":Gpush<CR>", { desc = "Git Push" })
      vim.keymap.set("n", "<leader>gl", ":Gpull<CR>", { desc = "Git Pull" })
      vim.keymap.set("n", "<leader>gb", ":Gblame<CR>", { desc = "Git Blame" })
    end,
  },
}
