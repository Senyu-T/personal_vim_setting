"Setting up Vundle"
set nocompatible
set clipboard+=unnamed
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()
filetype plugin indent on

"PowerLine"
"let g:Powerline_symbols = 'fancy'
set laststatus=2

"Node Tree"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

"Run Python"
autocmd FileType python nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>


"Basic Setting"
set t_Co=256
syntax on
let g:python_highlight_all=1
colorscheme molokai
set smartindent
set syntax=python
set cindent
set softtabstop=4 shiftwidth=4 expandtab
set autoindent
set nu
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set ruler

let g:ycm_global_ycm_extra_conf = '/home/senyu/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_key_list_select_completion=['<c-n>', '<c-p>']
let g:UltiSnipsExpandTrigger ="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

