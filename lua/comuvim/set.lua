
vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

vim.g.have_nerd_font = false

vim.o.number = true
vim.o.mouse = "a"

vim.o.showmode = false

vim.schedule(function()
    vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }


vim.opt.cursorline = true

vim.opt.scrolloff = 4

vim.o.confirm = true

vim.opt.relativenumber = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.termguicolors = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
