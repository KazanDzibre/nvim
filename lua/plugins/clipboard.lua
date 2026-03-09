-- ~/.config/nvim/lua/plugins/clipboard.lua
return {
  -- OSC52 clipboard support - works in SSH, remote terminals, etc.
  {
    "ojroques/nvim-osc52",
    config = function()
      local osc52 = require("osc52")
      osc52.setup({
        max_length = 0, -- No limit
        silent = false,
        trim = false,
      })

      -- Function to copy to system clipboard using OSC52
      function _G.osc52_yank()
        local register_content = vim.fn.getreg('"')
        if register_content ~= "" then
          osc52.copy(register_content)
          vim.notify("Copied to system clipboard!", vim.log.levels.INFO)
        end
      end

      -- Function to copy visual selection
      function _G.osc52_yank_visual()
        -- Save current register
        local save_reg = vim.fn.getreg('"')
        local save_regtype = vim.fn.getregtype('"')
        
        -- Yank visual selection to default register
        vim.cmd('noautocmd silent normal! "vy"')
        
        -- Get the yanked content
        local content = vim.fn.getreg('"')
        if content ~= "" then
          osc52.copy(content)
          vim.notify("Selection copied to clipboard!", vim.log.levels.INFO)
        end
        
        -- Restore register
        vim.fn.setreg('"', save_reg, save_regtype)
      end

      -- Create keymaps
      vim.keymap.set("n", "<leader>y", "<cmd>lua _G.osc52_yank()<CR>", 
        { desc = "Copy register to system clipboard" })
      
      vim.keymap.set("v", "<leader>y", "<cmd>lua _G.osc52_yank_visual()<CR>", 
        { desc = "Copy selection to system clipboard" })
      
      -- Also map Ctrl+C in visual mode for familiarity
      vim.keymap.set("v", "<C-c>", "<cmd>lua _G.osc52_yank_visual()<CR>", 
        { desc = "Copy selection to system clipboard" })
    end,
  },
}
