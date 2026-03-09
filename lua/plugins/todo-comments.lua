return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  config = function()
    require("todo-comments").setup({
      -- Your configuration comes here
      -- or leave it empty to use the default settings
      keywords = {
        FIX = {
          icon = " ", -- icon used for the sign, and in search results
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- more keywords that map to this type
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", color = "warning", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      highlight = {
        multiline = true,          -- Enable multine todo comments
        multiline_pattern = "^.",  -- Pattern to match before the comment
        multiline_context = 10,    -- Extra lines that will be re-evaluated
        before = "",               -- Patter to use for before line highlighting
        keyword = "wide",           -- "wide", "wide_bg", "wide_fg", "narrow"
        after = "",                -- Pattern to use for after line highlighting
        pattern = [[.*<(KEYWORDS)\s*:]],  -- Pattern to match keywords
        comments_only = true,       -- Only highlight in comments
        max_line_len = 400,         -- Ignore lines longer than this
        exclude = {},               -- List of file types to exclude
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" },
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        pattern = [[\b(KEYWORDS):]],  -- Pattern for search
      },
    })
  end,
}
