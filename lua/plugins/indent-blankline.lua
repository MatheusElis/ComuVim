return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local indent_blankline = require("ibl")
		indent_blankline.setup({
			indent = { char = "┊" },
		})
	end,
}
