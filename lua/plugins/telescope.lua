return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- Optional: for faster searching
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        preview = {
            treesitter = false,
        },
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            ["<ESC>"] = actions.close,
          },
          n = {
            ["q"] = actions.close,
          },
        },
        file_ignore_patterns = { "node_modules", ".git", "dist", "build", ".cache" },
        set_env = { ['COLORTERM'] = 'truecolor' },
      },
      pickers = {
        find_files = {
          hidden = true,
          follow = true,
        },
        live_grep = {
          additional_args = function(opts)
            return { "--hidden" }
          end,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })

    -- Load fzf extension if available
    pcall(telescope.load_extension, "fzf")

    -- Keymaps - Using Ctrl+P and Ctrl+G
    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files (Ctrl+P)" })
    vim.keymap.set("n", "<C-g>", builtin.live_grep, { desc = "Live grep (Ctrl+G)" })
    
    -- Additional useful Telescope keymaps (keeping some leader mappings as backup)
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Recent files" })
    vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "Find in current buffer" })
    vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find word under cursor" })
    vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Find marks" })
  end,
}
