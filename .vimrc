"=============================================================================
"全局设置 
"=============================================================================

set nu              " Show line number
syntax on           " Syntax highlight


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




"pathogen: vim manager,@http://lostjs.com/2012/02/04/use-pathogen-and-git-to-manage-vimfiles/
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

