" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'scrooloose/nerdtree'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'

"Plug 'cocopon/iceberg.vim'
Plug 'hzchirs/vim-material'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'takac/vim-hardtime'

Plug 'tpope/vim-surround'

Plug 'rlue/vim-barbaric'

Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
"let g:material_style='palenight'
set background=dark
colorscheme vim-material
"colorscheme palenight

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

set ignorecase
set smartcase
set hlsearch
set incsearch
set cindent

" fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

nnoremap <Leader>r :Rg<Space>
