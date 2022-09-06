source $VIMRUNTIME/vimrc_example.vim

au GUIEnter * simalt ~x
set t_Co=256
set hls
set is
set cb=unnamed
set gfn=Fixedsys:h18
set ts=4
set sw=4
set si
set autoread
set langmenu=en_US.UTF-8
set encoding=utf8
set laststatus=2  " always display the status line
set nocompatible
" let g:kite_supported_languages = ['python', 'javascript', 'php']
" set foldmethod=syntax
" hi Statement ctermfg=darkred
" hi Type ctermfg = darkgreen
" highlight LineNr ctermfg=darkred ctermbg=white
language en

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'sainnhe/everforest'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/lifepillar/vim-solarized8'

call plug#end()

set background=dark
colorscheme solarized8

nnoremap <leader>n :NERDTreeFocus<CR>

" autocmd filetype cpp nnoremap <F8> :!cls<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -g -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype python nnoremap <F10> :!py -3.9 %<CR>

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

