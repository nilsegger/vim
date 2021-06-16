set nocompatible              " be iMproved, required
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
nnoremap <C-n> :NERDTreeToggle<CR>

Plugin 'valloric/youcompleteme'
Plugin 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/syntastic'

" Compile with '\ll'
" Parse error file '\le'
" View pdf with '\lv'
Plugin 'lervag/vimtex'

Plugin 'cdelledonne/vim-cmake'

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
syntax enable
set number
set clipboard=unnamedplus
set cursorline
set nowrap

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

set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

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
