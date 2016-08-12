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

" Plugins
" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let ctrlp_switch_buffer=0

" Nerdtree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
