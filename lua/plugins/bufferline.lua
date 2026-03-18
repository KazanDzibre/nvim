return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          icon = "▎",
          style = "icon",
        },
        buffer_close_icon = "󰅖",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "(" .. count .. ")"
        end,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true
          }
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thin",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "insert_after_current",
      },
    })

    -- Keybindings
    local map = vim.keymap.set

    -- Close current buffer
    map("n", "<C-x>", "<cmd>bdelete<CR>", { desc = "Close buffer" })

    -- New tab and switch to it
    map("n", "<C-t>", "<cmd>tabnew<CR>", { desc = "New tab" })

    -- Navigate buffers
    map("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    map("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
  end,
}
