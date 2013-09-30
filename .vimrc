"=============================================================================
"全局设置 
"=============================================================================

set nu              " Show line number
syntax on           " Syntax highlight
set backspace=indent,eol,start 
" Highlight the 80th column as max line length and set color
set colorcolumn=80
highlight ColorColumn ctermbg=DarkGray
" Highlight the column cursor stands for indent checking and set color
set cursorcolumn
highlight CursorColumn ctermbg=DarkGray
" Returns true if paste mode is enabled
func! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunc
set laststatus=2    " Always show the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w   " Format the status line
set tabstop=4       " Set tab length to 4 spaces
set shiftwidth=4    " Set indent length to 4 spaces when pressing << or >>
set expandtab       " Replace tab with spaces
set smarttab        " Delete 4 spaces with one backspace in blank lines
" Filetype detection, plugin files and indent files for specific file types 
filetype plugin indent on
set ignorecase      " Case-insensitive search
set smartcase       " Case-sensitive search if any caps
set hls             " Highlight searched text

" Return to last edit position when opening files (You want this!)
augroup RememberPosition
    autocmd BufReadPost *
         \ if line("'\"") > 0 && line("'\"") <= line("$") |
         \   exe "normal! g`\"" |
         \ endif
augroup END

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

augroup DeleteTrailing
    autocmd BufWrite *.py :call DeleteTrailingWS()
    autocmd BufWrite *.cpp :call DeleteTrailingWS()
    autocmd BufWrite *.c :call DeleteTrailingWS()
    autocmd BufWrite *.hpp :call DeleteTrailingWS()
augroup END




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"font encode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
language message zh_CN.UTF-8
""vim的默认显示编码
set encoding=utf-8
"存储和新建文件时的编码
set fenc=utf-8
""编码自动检测
set fileencodings=gbk,ucs-bom,utf-8,cp936,gb18030




"pathogen: vim plugin manager,@http://lostjs.com/2012/02/04/use-pathogen-and-git-to-manage-vimfiles/
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

