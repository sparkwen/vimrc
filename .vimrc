"""搜索设置                                                                     
set incsearch                                 "在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set hlsearch                                  "高亮检索内容       
set showmatch                                 "高亮显示匹配的括号 
set matchtime=1                               "高亮括号时间，单位为0.1秒


"""状态栏                                                                       
"set ruler                                    "在状态行上显示光标所在位置的行号和列号
set laststatus=2                              "显示状态行数,默认1行 
set statusline=[%t]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]   "状态栏显示内容与格式


"""文件类型                                                                    
filetype on                                   "文件自动检测文件类型   
filetype plugin on                            "载入文件类型相关的插件   
syntax on                                     "语法高亮
filetype plugin indent on                     "不同类型文件有不同的方式
autocmd FileType python set expandtab         "python的4空格与tab等价,以免破坏python的的对齐语法


"""第80列着色
set colorcolumn=80
highlight ColorColumn ctermbg=DarkCyan 
" Highlight the column cursor stands for indent checking and set color
"set cursorline
"highlight cursorline ctermbg=lightgrey 


"""tab 相关
set tabstop=4       " Set tab length to 4 spaces
set shiftwidth=4    " Set indent length to 4 spaces when pressing << or >>
set expandtab       " Replace tab with spaces
set smarttab        " Delete 4 spaces with one backspace in blank lines


"""记录上次退出时的位置
augroup RememberPosition
    autocmd BufReadPost *
         \ if line("'\"") > 0 && line("'\"") <= line("$") |
         \   exe "normal! g`\"" |
         \ endif
augroup END


"""存储时，删除行尾空格(.py, .cpp, .c, .hpp)
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


"""拷贝模式侦测，拷贝文件的格式
func! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunc


"""字体&语言设置
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
language message zh_CN.UTF-8
set encoding=utf-8                                 "vim的默认显示编码
set fenc=utf-8                                     "存储和新建文件时的编码
set fileencodings=gbk,ucs-bom,utf-8,cp936,gb18030  "打开文件时编码自动检测


"""其它设置
set nu              " Show line number
set backspace=indent,eol,start 


"""doxygentoolkit注释管理
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="wensaiping, wensaiping@baidu.com"
let g:DoxygenToolkit_licenseTag="None"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1


"""pathogen插件管理
"pathogen: vim plugin manager,@http://lostjs.com/2012/02/04/use-pathogen-and-git-to-manage-vimfiles/
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

