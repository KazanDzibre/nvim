return {
  "gen740/SmoothCursor.nvim",
  event = "VeryLazy",
  config = function()
    require("smoothcursor").setup({
      -- cursor animation speed
      cursor = "",          -- your cursor symbol
      interval = 14,          -- update interval in ms
      priority = 10,          -- highlight priority
      timeout = 2000,         -- ms to reset animation
      highlight = "Cursor",   -- highlight group
    })
  end,
}
