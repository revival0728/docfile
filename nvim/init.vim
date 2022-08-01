:set relativenumber
:set mouse=a
:set encoding=UTF-8
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

syntax enable
set smartindent
set expandtab

command Copyall :!cat % | clip.exe
command Clipall :!cat % | clip.exe

autocmd BufNewFile,BufRead *.md set filetype=markdown

call plug#begin('~/.config/nvim/plugged')

" Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/iCyMind/NeoSolarized'
Plug 'tribela/vim-transparent'
Plug 'nvim-lualine/lualine.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/lifepillar/vim-solarized8'

call plug#end()

let g:mkdp_browser = 'chrome'

set termguicolors
" :colorscheme NeoSolarized
" TransparentEnable "TransparentDisable
" :colorscheme jellybeans " other options 'rakr', 'angr'
" colorscheme onedark
set background=dark
colorscheme solarized8

autocmd filetype cpp inoremap { {}<Left>
autocmd filetype cpp inoremap {<CR> {<CR>}<Esc>O
autocmd filetype cpp inoremap {{ {
autocmd filetype cpp inoremap {} {}

autocmd filetype javascript inoremap { {}<Left>
autocmd filetype javascript inoremap {<CR> {<CR>}<Esc>O
autocmd filetype javascript inoremap {{ {
autocmd filetype javascript inoremap {} {}

autocmd filetype java inoremap { {}<Left>
autocmd filetype java inoremap {<CR> {<CR>}<Esc>O
autocmd filetype java inoremap {{ {
autocmd filetype java inoremap {} {}

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -g -std=c++14 % -o %:r.o<CR>
autocmd filetype cpp nnoremap <F10> :!time ./%:r.o < %:r.txt<CR>
autocmd filetype python nnoremap <F10> :!python3 %<CR>

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-b> :TagbarToggle<CR>
nnoremap <C-d> :CocDiagnostics<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
autocmd filetype markdown nnoremap <C-m> :MarkdownPreview<CR>
