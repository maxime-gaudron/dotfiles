syntax enable
        
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch

" pathogen
execute pathogen#infect()
filetype plugin indent on

" Theme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" search
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Plugins
" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let ctrlp_switch_buffer=0
let g:ctrlp_open_new_file = 't'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_use_caching = 0
endif

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Rust auto completion
let g:ycm_rust_src_path="/home//Developer/rust-master/src/"

" temporary files
set backupdir=/tmp
set directory=/tmp
