return {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  config = function()
    require("Comment").setup({
      -- Add any options here
      padding = true,          -- Add a space between comment delimiter and line
      sticky = true,           -- Keep the cursor position when commenting
      ignore = nil,            -- Lines to ignore (regex)
      
      -- Keymaps
      toggler = {
        line = "<leader>cc",    -- Line comment toggle (what you asked for!)
        block = "<leader>cb",   -- Block comment toggle
      },
      opleader = {
        line = "<leader>c",     -- Line comment operator (for motions)
        block = "<leader>c",    -- Block comment operator
      },
      extra = {
        above = "<leader>cO",   -- Add comment above
        below = "<leader>co",   -- Add comment below
        eol = "<leader>cA",     -- Add comment at end of line
      },
    })
  end,
}
