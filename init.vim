set runtimepath+=~/.vim_runtime

call plug#begin('~/local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/preservim/nerdcommenter.git'

call plug#end()

set number

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" <LEADER> = \
" [count]<leader>cc  komentarise selektovane linije
" [count]<leader>cn  ubaci neki nesting
" [count]<leader>c<space> izbrise komentare
" [count]<leader>cm neki kurac
" [count]<leader>ci valjda linijski komentar probaj jbg
" [count]<leader>cs brise komentare i stavi neki blok format layout
" [count]<leader>cy isto ko cc samo neki yanked ubaci vidi kad probas sta je

