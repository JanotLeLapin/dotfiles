set number

filetype plugin on
syntax on

filetype indent on

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

Plug 'joshdick/onedark.vim'

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

colorscheme onedark

