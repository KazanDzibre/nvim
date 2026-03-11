return {
  "echasnovski/mini.indentscope",
  event = "BufReadPre",
  config = function()
    require("mini.indentscope").setup({
      draw = {
        delay = 0,
        animation = function() return 0 end,  -- no animation
        priority = 2,
      },
      symbol = "│",
      options = { try_as_border = true },
    })
  end,
}
