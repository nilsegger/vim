set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'sainnhe/sonokai'

Plugin 'vim-airline/vim-airline'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'junegunn/seoul256.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

if has('termguicolors')
	set termguicolors
endif

let g:seoul256_background = 234
colorscheme seoul256 

autocmd vimenter * Limelight 
map <C-v> :Goyo<CR>

Plugin 'preservim/nerdtree'
map <C-o> :NERDTreeToggle<CR>

Plugin 'airblade/vim-gitgutter'
g:gitgutter_sign_priority = 0


let g:ycm_clangd_binary_path = "/usr/bin/clangd-9"

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set ruler
set ignorecase
set smartcase
set autoindent
set number
syntax enable

let g:ycm_path_to_python_interpreter="/usr/bin/python3"
let g:ycm_max_num_identifier_candidates = 30
let g:ycm_complete_in_comments = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
