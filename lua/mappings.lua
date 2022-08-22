local Remap = require("user.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap('<leader>pv', ':Vex<CR>')
nnoremap('<leader><CR>', ':so ~/.config/nvim/init.lua')
nnoremap('<C-j>', ':cnext<CR>')
nnoremap('<C-k>', ':cprev<CR>')

-- Telescope commands
nnoremap('<C-p>', '<cmd>Telescope find_files<CR>')
nnoremap('<M-P>', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>ff', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')

vnoremap('<leader>p', '"_dP')
vnoremap('<leader>y', '"+y')
nnoremap('<leader>y', '"+y')

-- Easy Dragging
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
