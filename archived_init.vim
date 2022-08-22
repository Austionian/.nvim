"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Vim Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/nvim/plugged')
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'austionian/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'cespare/vim-toml'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'EdenEast/nightfox.nvim'
Plug 'akai54/2077.nvim'
call plug#end()

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \ '*': ['trim_whitespace'],
    \ 'rust': ['rustfmt'],
\}

inoremap <silent><expr><TAB>
    \ pumvisible() ? “\<C-n>” : “\<TAB>”

nmap <silent> <M-f> :ALEGoToDefinition<CR>
nmap <silent> <M-g> :ALEFindReferences<CR>
nmap <silent> <M-k> <Plug>(ale_previous_wrap)
nmap <silent> <M-j> <Plug>(ale_next_wrap)

syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1

let g:tokyonight_style = "night"
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

colorscheme duskfox

lua << END
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END


let mapleader = " "
nnoremap <leader>pv :Vex<CR>

nnoremap <leader><CR> :so ~/.config/nvim/init.vim
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <M-P> <cmd>Telescope live_grep<cr>
nnoremap <leader>ff <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
