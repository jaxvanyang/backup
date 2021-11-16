set nocompatible	" 去掉 vi 的一致性
set number			" 显示行号

" 隐藏滚动条
set guioptions-=r 
set guioptions-=L
set guioptions-=b

set showtabline=0	" 隐藏顶部标签栏
set guifont=Monaco:h13	" 设置字体
syntax on			" 开启语法高亮
let g:solarized_termcolors=256  " solarized 主题设置在终端下的设置

" set background=black	 " 设置背景色
" colorscheme solarized
" set nowrap			" 设置不折行

set fileformat=unix " 设置以 Unix 的格式保存文件
set cindent	 		" 设置 C 样式的缩进格式
set tabstop=4   	" 设置 tab 长度
set shiftwidth=4	" 同上
set showmatch   	" 显示匹配的括号
set scrolloff=5	 	" 距离顶部和底部5行
set laststatus=2	" 命令行为两行
set fenc=utf-8	  	" 文件编码
set backspace=2
set mouse=a	 		" 启用鼠标
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
" set ignorecase		" 忽略大小写
set incsearch
" set hlsearch		" 高亮搜索项
" set noexpandtab	 	" 不允许扩展 table
set whichwrap+=<,>,h,l
set autoread
set autoindent
set cursorline		" 突出显示当前行
" set cursorcolumn	" 突出显示当前列
set relativenumber
