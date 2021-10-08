set nocompatible              " be iMproved, required
set textwidth=80
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'

" Compile with '\ll'
" Parse error file '\le'
" View pdf with '\lv'
Plugin 'lervag/vimtex'

Plugin 'kyoz/purify', { 'rtp': 'vim' }

Plugin 'cdelledonne/vim-cmake'

" Plugin 'yggdroot/indentline'

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
"
syntax on 
set number
set clipboard=unnamedplus
set cursorline
set nowrap
set termguicolors     " enable true colors support
set background=dark
colorscheme purify
let g:airline_theme='purify'
set list lcs=tab:\|\ 

let g:ycm_always_populate_location_list = 1
nnoremap <C-n> :lopen<CR>
" If you want to just turn off the identifier completer but keep the semantic triggers, you should set g:ycm_min_num_of_chars_for_completion to a high number like 99.
let g:ycm_min_num_of_chars_for_completion = 99
nnoremap <C-G> :YcmCompleter GoTo<CR>
nnoremap <F2> :YcmCompleter GoToReferences<CR>
nnoremap <F3> :YcmCompleter FixIt<CR>
nnoremap <F4> :YcmCompleter RefactorRename 

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h


" recommended defaults by syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:cmake_build_dir_location = './build'
nnoremap <F5> :CMakeBuild<CR>
