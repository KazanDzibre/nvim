return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Load it first
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      integrations = {
        cmp = true,
        telescope = true,
        treesitter = true,
      },
    })

    -- Set Catppuccin as the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}
