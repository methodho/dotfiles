" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" https://github.com/tpope/vim-sensible
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'

Plug 'jacoborus/tender.vim'

" Vim HardTime
Plug 'takac/vim-hardtime'

" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" https://github.com/rlue/vim-barbaric
Plug 'rlue/vim-barbaric'

" Initialize plugin system
call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme tender

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" Vim HardTime
let g:hardtime_default_on = 1
let g:hardtime_showmsg = 1
let g:list_of_normal_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
