" ======================================
" Editor Settings
" ======================================

" Show absolute line number on the current line
set number

" Show relative numbers for easier movement
set relativenumber

" Configure tab and indentation behavior
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab


" ======================================
" Plugin Configuration
" ======================================

" Airline appearance
let g:airline_theme='google_dark'
let g:airline_powerline_fonts = 1


" ======================================
" Plugin Manager
" ======================================

call plug#begin('~/.local/share/nvim/plugged')

" Status line enhancement
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Smart commenting utility
Plug 'tpope/vim-commentary'

" Indenting
Plug 'yggdroot/indentline'

" Surround
Plug 'tpope/vim-surround'

call plug#end()


" ======================================
" Key Mappings
" ======================================



