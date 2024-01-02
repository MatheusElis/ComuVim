return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.autopep8,
				null_ls.builtins.diagnostics.flake8,
			},
		})
		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { silent = true, desc = "LSP Formatting" })
	end,
}
