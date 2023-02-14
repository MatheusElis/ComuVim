local ok_neotree, neotree = pcall(require, "neo-tree")
if not ok_neotree then return end
neotree.setup({
		filesystem = {
				filtered_items = {
						hide_dotfiles = false,
						hide_gitignored = false
				}
		}
})
