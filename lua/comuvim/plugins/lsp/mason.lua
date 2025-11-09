return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- list of servers for mason to install
            ensure_installed = {
                "lua_ls",        -- Lua language server
                "gopls",         -- Go language server
                "ts_ls",         -- TypeScript/JavaScript language server
                "html",          -- HTML language server
                "cssls",         -- CSS language server
                "pyright",       -- Python language server
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗",
                        },
                    },
                },
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
                "sqlfmt",
                "shfmt",
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}
