set nocompatible              " be iMproved, required
filetype off                  " required

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Common vim settings
Plug 'tpope/vim-sensible'

" File system navigation
Plug 'scrooloose/nerdtree'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Theme
Plug 'itchyny/lightline.vim'
Plug 'hzchirs/vim-material'
Plug 'drewtempelmeyer/palenight.vim'

" Disabled UP,DONW,LEFT,RIGHT
Plug 'takac/vim-hardtime'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Automatic input method switching
" Plug 'rlue/vim-barbaric'

" Auto remove tailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" Initialize plugin system
call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Load sensible.vim before your vimrc, so we can overrides the settings
runtime! plugin/sensible.vim

filetype indent off

" =============== Common settings ===============

" ---------- General settings ----------

" Share clipboard with Mac
set clipboard=unnamed

" search as characters are entered
set incsearch
" highlight search matches
set hlsearch

" search insensitivity
set ignorecase
set smartcase

" ---------- Code organize ----------

" Use spaces as indent
set shiftwidth=2
set tabstop=2
set expandtab

" Disable folding function
set nofoldenable

" ---------- Display ----------

" Syntax highlight
syntax enable

" Set color format
set t_Co=256

" ---------- File encoding ----------

" Encoding for chinese
set encoding=utf8

" =============== Plugin settings ===============

" Theme
set background=dark
colorscheme vim-material

" Airline
let g:lightline = {
      \ 'colorscheme': 'material',
      \ }

" Vim HardTime
let g:hardtime_default_on = 1
let g:hardtime_showmsg = 1
let g:list_of_normal_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

" https://github.com/scrooloose/nerdtree
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

" fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

nnoremap <Leader>r :Rg<Space>

let g:EasyMotion_smartcase = 1
