set number

set encoding=UTF-8

filetype plugin on
syntax on

filetype indent on

set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'navarasu/onedark.nvim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:pear_tree_pairs = {
    \ '(': {'closer': ')'},
    \ '[': {'closer': ']'},
    \ '{': {'closer': '}'},
    \ "'": {'closer': "'"},
    \ '"': {'closer': '"'},
    \ '`': {'closer': '`'},
    \ }

nnoremap <C-f> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '\.node_modules$']
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:ctrlp_custom_ignore='node_modules\|git|dist\|.next\'
let g:ctrlp_show_hidden=1

let g:onedark_config = {
    \ 'style': 'deep',
\ }

let g:lightline = {
    \ 'colorscheme': 'one'
\ }

colorscheme onedark
