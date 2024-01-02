return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local time = os.date("%H:%M")
		local v = vim.version()
		local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

		dashboard.section.header.val = {
			"",
			"   ██████╗ ██████╗ ███╗   ███╗██╗   ██╗██╗   ██╗██╗███╗   ███╗ ",
			"  ██╔════╝██╔═══██╗████╗ ████║██║   ██║██║   ██║██║████╗ ████║ ",
			"  ██║     ██║   ██║██╔████╔██║██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║     ██║   ██║██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ╚██████╗╚██████╔╝██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"   ╚═════╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"",
			" [ Proletarians of the World, Unite! ] ",
			"",
		}
		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  ☭ New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  ☭ Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  ☭ Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("w", "  ☭ Find Word", ":Telescope live_grep<CR>"),
			dashboard.button("q", "  ☭ Quit NVIM", ":qa<CR>"),
		}

		dashboard.section.footer.val = {
			" " .. time .. " ",
			version,
		}

		alpha.setup(dashboard.opts)
	end,
}
