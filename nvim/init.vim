set relativenumber
set mouse=a
set encoding=UTF-8
set shiftwidth=4
set smarttab
set softtabstop=4
syntax enable
set smartindent
set expandtab

command Clipall :!cat % | clip.exe

autocmd BufNewFile,BufRead *.md set filetype=markdown

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tribela/vim-transparent'
Plug 'romgrk/barbar.nvim'

call plug#end()

inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {{ {
inoremap {} {}

nnoremap <F9> :w <bar> !./build.sh
nnoremap <F10> :./run.sh

set termguicolors
set background=dark
colorscheme solarized8
