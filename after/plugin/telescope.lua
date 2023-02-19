local ok_telescope, telescope = pcall(require, "telescope.builtin")
if not ok_telescope then return end

require("telescope").setup({
	extensions = {
		repo = {
			list = {
				fd_opts = {
					"--no-ignore-vcs",
				},
				search_dirs = {
					"~/projects",
					"~/2rpnet",
				},
				-- pattern = {
				-- 	'[[^\.git$]]',
				-- },
			},
		},
	},
})

require("telescope").load_extension "repo"
