return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- ASCII header: MarkoNeovim
    dashboard.section.header.val = {
      " /$$      /$$                     /$$                 /$$   /$$                                /$$              ",
      "| $$$    /$$$                    | $$                | $$$ | $$                               |__/              ",
      "| $$$$  /$$$$  /$$$$$$   /$$$$$$ | $$   /$$  /$$$$$$ | $$$$| $$  /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ",
      "| $$ $$/$$ $$ |____  $$ /$$__  $$| $$  /$$/ /$$__  $$| $$ $$ $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$",
      "| $$  $$$| $$  /$$$$$$$| $$  \\__/| $$$$$$/ | $$  \\ $$| $$  $$$$| $$$$$$$$| $$  \\ $$ \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
      "| $$\\  $ | $$ /$$__  $$| $$      | $$_  $$ | $$  | $$| $$\\  $$$| $$_____/| $$  | $$  \\  $$$/  | $$| $$ | $$ | $$",
      "| $$ \\/  | $$|  $$$$$$$| $$      | $$ \\  $$|  $$$$$$/| $$ \\  $$|  $$$$$$$|  $$$$$$/   \\  $/   | $$| $$ | $$ | $$",
      "|__/     |__/ \\_______/|__/      |__/  \\__/ \\______/ |__/  \\__/ \\_______/ \\______/     \\_/    |__/|__/ |__/ |__/",
    }

    -- Dashboard buttons
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
      dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "  Recent Files", ":Telescope oldfiles <CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    -- Setup Alpha
    alpha.setup(dashboard.config)
  end,
}
