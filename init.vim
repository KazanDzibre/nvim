call plug#begin('~/local/share/nvim/plugged')

Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'OmniSharp/omnisharp-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' , 'branch' : 'release/1.x' }
Plug 'dense-analysis/ale'
Plug 'https://github.com/justmao945/vim-clang.git'
Plug 'https://github.com/tpope/vim-surround.git'
"Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/tomasr/molokai.git'
Plug 'https://github.com/dracula/vim.git'
Plug 'https://github.com/gosukiwi/vim-atom-dark.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'SirVer/ultisnips'
Plug 'Ivo-Donchev/vim-react-goto-definition'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'

" Currently, es6 version of snippets is available in es6 branch only
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }

call plug#end()


nmap<leader>gd <Plug>(coc-definition)
nmap<leader>gr <Plug>(coc-references)
nnoremap<C-p> :GFiles<CR>
nnoremap<C-f> :Files<CR>
map <leader>b :b #<CR>

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Za ce da budu svi isti
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END


set colorcolumn=120
highlight ColorColumn ctermbg=darkgray

"autocmd vimenter * NERDTree
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

" Color scheme OVDE
colorscheme dracula 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" To map to <leader>D:
noremap <leader>d :call ReactGotoDef()<CR>
set mouse=nicr
" ZZryysKgijHbuw6
" 
" Supprot for different goto definitions for different file types.
autocmd FileType cs nmap <silent> gd :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>

autocmd FileType ts nmap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
autocmd FileType html nmap <silent> gd :call CocActionAsync('jumpDefinition')<CR>

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
