return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("nvim-tree").setup({
      view = {
        width = 35,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    })

    -- toggle file tree
    vim.keymap.set("n", "<A-b>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
  end,
}
