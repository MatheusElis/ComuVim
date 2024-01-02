local servers = {
	gopls = {},
	pylsp = {},
	lua_ls = {},
	dockerls = {},
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig")

      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = cmp_nvim_lsp.default_capabilities(capabilities)


			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				ensure_installed = vim.tbl_keys(servers),
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						settings = servers[server_name],
					})
				end,
			})

			vim.keymap.set("n", "<leader>li", vim.lsp.buf.hover, { silent = true, desc = "Show LSP Info Docs" })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { silent = true, desc = "LSP go to definition" })
			vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { silent = true, desc = "LSP Code Actions" })
		end,
	},
}
