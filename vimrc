set nocompatible
filetype off

set t_Co=256
colorscheme slate

set hlsearch
set smartcase
set ignorecase
set shortmess+=I
set incsearch

nnoremap K 0i<Enter><Esc>
inoremap jk <Esc>
inoremap fj <Esc>
inoremap jf <Esc>

inoremap <F2> <Esc>:w<CR>
nnoremap <F2> :w<CR>
inoremap <F3> <Esc>:wq<CR>
nnoremap <F3> :wq<CR>
inoremap <F4> <Esc>:q<CR>
nnoremap <F4> :q<CR>
inoremap <F5> <Esc>:NERDTree<CR>
nnoremap <F5> :NERDTree<CR>
inoremap <F7> <Esc><C-W><
nnoremap <F7> <C-W><
inoremap <F8> <Esc><C-W>>
nnoremap <F8> <C-W>>
inoremap <F12> <Esc>:set invnumber<CR>
nnoremap <F12> :set invnumber<CR>

" spacebar clears highlighting
nmap <SPACE> <SPACE>:noh<CR>

" Vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here

Plugin 'scrooloose/nerdtree'
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 25 

Plugin 'tommcdo/vim-exchange'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['pylint']

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on



