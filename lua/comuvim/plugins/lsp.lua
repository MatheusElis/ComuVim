return {
    {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
            },
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            -- list of servers for mason to install
            ensure_installed = {
                "lua_ls",
                "gopls",
                "pyright",
                "jsonls",
                "ts_ls",
            }
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
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },

      version = '1.*',

      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        keymap = { preset = 'default' },

        appearance = {
          nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = { documentation = { auto_show = true } },

        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" }
      },
      opts_extend = { "sources.default" }
    },
}
