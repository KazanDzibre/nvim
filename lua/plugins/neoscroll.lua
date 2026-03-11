return {
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  config = function()
    require("neoscroll").setup({
      -- Set scrolling behavior
      mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "zt", "zz", "zb" },
      hide_cursor = true,       -- Hide cursor while scrolling
      stop_eof = true,          -- Stop at end of file
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      easing_function = "cubic", -- smooth easing
    })
  end,
}
