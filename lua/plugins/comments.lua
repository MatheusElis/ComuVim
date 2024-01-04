return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup()
		vim.keymap.set("n", "<leader>/", function()
			require("Comment.api").toggle.linewise.current()
		end, { silent = true, desc = "Comment line" })
		vim.keymap.set(
			"v",
			"<leader>/",
			"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
			{ silent = true, desc = "Toggle comment line" }
		)
	end,
}
