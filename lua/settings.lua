vim.o.scrolloff = 20
vim.o.signcolumn = "yes"

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.o.wrap = false

vim.o.mouse = 'a'

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.updatetime = 50

vim.g.termguicolors = true
vim.g.rustfmt_autosave = 1
vim.g.python3_host_prog = '~/Library/Frameworks/Python.framework/Versions/3.10/bin/python3'
vim.g.mapleader = ' '

-- LEAP PLUGIN 
require('leap').add_default_mappings()

