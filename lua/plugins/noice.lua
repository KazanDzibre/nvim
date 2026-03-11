return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },

  config = function()
    require("noice").setup({
      lsp = {
        progress = { enabled = true },
        hover = { enabled = true },
        signature = { enabled = true },
      },

      presets = {
        bottom_search = true,         -- classic / search bottom
        command_palette = true,       -- cmdline + popupmenu together
        long_message_to_split = true, -- long messages go to split
        inc_rename = false,
        lsp_doc_border = true,
      },
    })

    -- use notify for notifications
    vim.notify = require("notify")
  end,
}
