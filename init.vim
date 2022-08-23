call plug#begin()
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'SirVer/ultisnips'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'lervag/vimtex'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"vimtex"
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'

"PowerLine"
"let g:Powerline_symbols = 'fancy'
set laststatus=2
set spell

"Node Tree"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

"Run Python"
autocmd FileType python nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>
"Run Tex"
autocmd FileType tex map <buffer> <F5> :!xelatex % <cr>

"Completion
augroup NCM2
    autocmd!
    autocmd BufEnter * call ncm2#enable_for_buffer()
    set completeopt=noinsert,menuone,noselect
    autocmd Filetype tex call ncm2#register_source({
            \ 'name': 'vimtex',
            \ 'priority': 8,
            \ 'scope': ['tex'],
            \ 'mark': 'tex',
            \ 'word_pattern': '\w+',
            \ 'complete_pattern': g:vimtex#re#ncm2,
            \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
            \ })
augroup END

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

"Basic Setting"
set t_Co=256
syntax on
color molokai
set smartindent
set cindent
set softtabstop=4 shiftwidth=4 expandtab
set autoindent
set nu
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set ruler
