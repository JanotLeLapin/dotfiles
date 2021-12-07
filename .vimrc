set number

filetype plugin on
syntax on

filetype indent on

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'joshdick/onedark.vim'
Plug 'hallzy/lightline-onedark'
Plug 'itchyny/lightline.vim'

call plug#end()

let g:pear_tree_pairs = {
    \ '(': {'closer': ')'},
    \ '[': {'closer': ']'},
    \ '{': {'closer': '}'},
    \ "'": {'closer': "'"},
    \ '"': {'closer': '"'},
    \ '`': {'closer': '`'},
    \ '<': {'closer': '>'}
    \ }

nnoremap <C-f> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '\.node_modules$']

let g:ctrlp_show_hidden=1

colorscheme onedark

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
