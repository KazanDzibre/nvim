return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup({
      preset = "modern",
      delay = 300,
    })

    -- Optional: group your keymaps
    wk.register({
      f = { name = "Find (Telescope)" },
      g = { name = "Git" },
      l = { name = "LSP" },
      t = { name = "Toggle" },
    }, { prefix = "<leader>" })
  end,
}
