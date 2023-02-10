require("bufferline").setup{
	options={numbers="buffer_id"}
}
  vim.keymap.set("n", "<S-Tab>", ":BufferLineCycleNext<CR>")
 

