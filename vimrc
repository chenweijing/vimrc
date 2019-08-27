call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'VundleVim/Vundle.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
call plug#end()

" ---------- 自定义设置 -----------
syntax enable
filetype on
filetype plugin indent on    
set nocompatible              
set encoding=utf-8
let mapleader =";"
set nocompatible
set backspace=indent,eol,start
set autoindent
set ignorecase
set cindent
set hls is
set hlsearch
set ts=4
set shiftwidth=4
set smarttab
set expandtab
set syntax=c 
set nu
set t_Co=256
set incsearch
set history=50

" -- airline --
" let g:airline_theme = "luna"
let g:airline_powerline_fonts = 1

" 关闭提示音
set vb t_vb=

" -- YCM --
let g:ycm_path_to_python_interpreter="/usr/bin/python"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_add_preview_to_completeopt = 0 
let g:ycm_confirm_extra_conf=0
let g:ycm_max_diagnostics_to_display = 0
set completeopt=longest,menu
let g:ycm_complete_in_comments=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_error_symbol = "Х" "set error or warning signs
let g:ycm_warning_symbol = "▲"

" let g:ycm_use_clangd = "Always"
" let g:ycm_clangd_binary_path = ""

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>ee :YcmDiags<CR>
nmap <F4> :YcmDiags<CR>

highlight YcmWaringSection ctermfg=0 ctermbg=242 guifg=red guibg=black
highlight YcmErrorLine ctermfg=red ctermbg=0 guifg=red guibg=green
highlight YcmWarningSection  ctermfg=red ctermbg=0 guifg=red guibg=green

" color
set background=light

" NERDTree
map <F2> :NERDTreeToggle<cr>
nnoremap <leader>nn :NERDTreeToggle <CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos = 'left'
let g:NERDTreeSize=30
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeHidden=0

" Save
inoremap <C-s>     <C-o>:w<cr>
nnoremap <C-s>     :w<cr>
nnoremap <leader>w :w<cr>

" Copy
vnoremap <leader>y "+y
nmap <leader>p "+y

" Quit
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa!<cr>

" Movement in insert mode
inoremap <c-h> <C-o>h
inoremap <c-j> <C-o>j
inoremap <c-j> <C-o>k
inoremap <c-j> <C-o>a
inoremap <c-^> <C-o><C-^>

" Esc
imap jk <Esc>
nnoremap nn  <F2>

" ----------------------------------------------------
"  <tab> / <s-tab> | Circular windows navigation
" ---------------------------------------------------
nnoremap <tab> <c-w>w
nnoremap <S-tab> <c-w>W
nnoremap <leader>hw <C-W>h
nnoremap <leader>jw <C-W>j
nnoremap <leader>kw <C-W>k
nnoremap <leader>lw <C-W>l


" ctrlp
let g:ctrl_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

if has("autocmd")
    autocmd! bufwritepost vimrc source ~/.vimrc
endif







