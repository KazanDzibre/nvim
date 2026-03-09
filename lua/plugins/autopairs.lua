return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    -- Import autopairs
    local autopairs = require("nvim-autopairs")
    
    -- Setup autopairs
    autopairs.setup({
      check_ts = true,           -- Enable treesitter integration
      ts_config = {
        lua = { "string" },      -- Don't autopair in Lua strings
        javascript = { "template_string" }, -- Don't in JS template strings
        java = false,            -- Don't autopair in Java
      },
      disable_filetype = { "TelescopePrompt", "vim" },
      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0,
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
      },
    })

    -- Import completion integration (for nvim-cmp)
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    
    -- Make autopairs work with nvim-cmp
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
