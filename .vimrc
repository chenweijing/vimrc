execute pathogen#infect()
syntax on
filetype plugin indent on

" ----------------------- Base Setting -------------------------------------
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
set incsearch
set enc=utf-8
set nu
set t_Co=256
set vb t_vb=
set wrapscan
set autoread
set smartcase
set termencoding=utf-8
set laststatus=2
set t_Co=256
set autowrite
" 禁用（）括号匹配
" :NoMatchParen
set noshowmatch
colorscheme vividchalk

" airline 
let g:airline_theme = "luna"
let g:airline_powerline_fonts = 1
set history=50

" 关闭提示音

" -------------------- YouCompleteMe ---------------------------------------
let mapleader =";"
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>

"开启实时错误或者warning的检测
let g:ycm_show_diagnostics_ui = 1

"关闭不全预览
let g:ycm_add_preview_to_completeopt = 0 

" 允许vim加载.ycm_extra_conf.py文件，不在提示
let g:ycm_confirm_extra_conf=0

set completeopt=longest,menu

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif 

" 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt -= preview

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

" 开启ycm标签补全引擎
" let g:ycm_collect_indentifiers_from_tags_files=1

" 禁止缓存匹配项， 每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 错误标记
let g:ycm_error_symbol = ">>" "set error or warning signs

" warning标记
let g:ycm_warning_symbol = "~~"
