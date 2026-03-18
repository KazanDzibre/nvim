return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            ensure_installed = {
                "lua_ls",
                "omnisharp",
            },
            automatic_installation = true,
        },
    },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- New Neovim 0.11 LSP API
            vim.lsp.config("ts_ls", { capabilities = capabilities })
            vim.lsp.config("solargraph", { capabilities = capabilities })
            vim.lsp.config("html", { capabilities = capabilities })
            vim.lsp.config("lua_ls", { capabilities = capabilities })
            vim.lsp.config("omnisharp", { capabilities = capabilities })

            vim.lsp.enable("omnisharp")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("solargraph")
            vim.lsp.enable("html")
            vim.lsp.enable("lua_ls")

            -- Keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gr", vim.lsp.buf.references)
            vim.keymap.set("n", "<C-.>", vim.lsp.buf.code_action)

            -- -----------------------------
            -- Auto-format on save
            -- -----------------------------
            -- Lua formatting

        end,
    },
}
