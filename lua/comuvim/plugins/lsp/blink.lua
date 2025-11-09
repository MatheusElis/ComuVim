return {
    {
        'saghen/blink.cmp',
        dependencies = { 
            { 'rafamadriz/friendly-snippets' },
            { "folke/lazydev.nvim" },
        },

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
                    default = { "lsp", "path", "snippets", "lazydev", "buffer" },
                    providers = {
                        lazydev = {
                            name = "LazyDev",
                            module = "lazydev.integrations.blink",
                            score_offset = 100,
                        },
                        cmdline = {
                            min_keyword_length = 2,
                        },
                    },
                },

            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
}
