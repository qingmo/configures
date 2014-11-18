set nocompatible "不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
syntax on	"打开高亮
imap jj <esc>	"map jj to esc key
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latinl
filetype plugin indent on "根据文件进行缩进
lang message en_US.UTF-8 "deal console 
language messages en_US.utf-8
set autoindent " always set autoindenting on 
set cindent
set tabstop=4 "让一个tab等于4个空格
set softtabstop=4
set shiftwidth=4
"set noexpandtab
"set expandtab
"set vb t_vb=
set number "显示行号
set title
"set nowrap "不自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用
"字体的设置
set guifont=Bitstream_Vera_Sans_Mono:h9:cANSI "记住空格用下划线代替哦
set gfw=幼圆:h10:cGB2312

"Setting Tlist
"TlistUpdate trigger tags update
"press F3 to show/hide taglist
map <F3> :silent! Tlist<CR> "按下F3就可以呼出了
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=0 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0

"对NERD_commenter的设置
let NERDShutUp=1
"setting nerdcommenter shortcuts
let mapleader="`"

"powerline status setting
set laststatus=2
let g:Powerline_symbols='unicode'

"setting ctags files 
set tags=tags,./tags;
set autochdir 

if has("cscope")
	cs add cscope.out
endif


set nocp
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
"original repos on github
"Bundle 'Lokaltog/vim-powerline'
"................................
Bundle 'DoxygenToolkit.vim'
Bundle 'The-NERD-Commenter'
"Bundle 'OmniCppComplete'
Bundle "Lokaltog/vim-powerline"
Bundle 'Valloric/YouCompleteMe'
Bundle 'taglist.vim'
Bundle 'a.vim'
"auto complete {} [] ...
"Bundle 'AutoClose'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
Bundle 'brookhong/cscope.vim'
"vim-scripts repos
".................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
".................................
"********************************************
filetype plugin indent on "根据文件进行缩进
"vundle configures ends
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
