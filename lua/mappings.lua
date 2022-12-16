local Remap = require("user.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap('<leader>pv', ':Vex<CR>')
nnoremap('<leader><CR>', ':so ~/.config/nvim/init.lua<CR>')
nnoremap('<C-j>', ':cnext<CR>')
nnoremap('<C-k>', ':cprev<CR>')

-- Toggle between buffers
nnoremap('<leader><leader>', '<c-^>')

-- Toggle to the file tree
nnoremap('<leader>pe', ":Ex<CR>")

-- Telescope commands
nnoremap('<C-p>', '<cmd>Telescope find_files<CR>')
nnoremap('<leader>ff', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fg', '<cmd>Telescope git_files<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')

vnoremap('<leader>p', '"_dP')
vnoremap('<leader>y', '"+y')
nnoremap('<leader>y', '"+y')

-- Easy Dragging
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Center on vert movement
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Open Undo Tree
nnoremap("<leader>u", "<cmd>UndotreeToggle<cr>")
