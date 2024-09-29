return { -- Autoformat
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },

	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "autopep8", "autoflake", "docformatter" },
			go = { "goimports", "golines", "gofumpt" },
			javascript = { "prettier" },
			json = { "prettier" },
			typescript = { "prettier" },
			sql = { "sqlfmt" },
		},
	},
}
