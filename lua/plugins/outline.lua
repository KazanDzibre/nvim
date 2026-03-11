return {
  "hedyhli/outline.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("outline").setup({
      -- Open automatically for large files
      auto_open = false,
      -- Show symbols in a floating window
      win_opts = {
        width = 40,
        side = "right", -- right sidebar
        show_numbers = false,
        show_relative_numbers = false,
      },
      -- Customize your symbols
      highlights = {
        Normal = { guifg = "#ffffff" },
        -- Optional: more customization
      },
    })

    -- Toggle outline sidebar
    vim.keymap.set("n", "<leader>o", function()
      require("outline").toggle()
    end, { desc = "Toggle code outline" })
  end,
}
