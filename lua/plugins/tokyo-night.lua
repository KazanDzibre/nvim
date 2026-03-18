return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional: configure Tokyo Night
    require("tokyonight").setup({
      style = "storm", -- "storm", "night", or "day"
      transparent = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
    })
    vim.cmd("colorscheme tokyonight-night")
  end,
}
