return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        -- Your primary languages
        "csharp",
        "bash",
        "python",
        "dart",
        
        -- Web development
        "javascript",
        "typescript",
        "html",
        "css",
        "scss",
        "json",
        "yaml",
        "toml",
        "xml",
        
        -- Flutter specific
        "dart",        -- Already included above
        
        -- Common utilities
        "markdown",
        "markdown_inline",
        "regex",
        "dockerfile",
        "gitignore",
        "make",
        "cmake",
        
        -- Config files
        "lua",         -- For Neovim config
        "vim",
        "vimdoc",
        
        -- Databases
        "sql",
        
        -- Other useful languages
        "rust",        -- Many dev tools written in Rust
        "go",          -- Popular for backend
        "java",        -- In case you need it
        "php",         -- In case you need it
      },
      auto_install = true, -- Auto install missing parsers
      highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
