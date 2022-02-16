" [ 基本配置=============================================================
filetype plugin on						"	preservim/nerdcommenter 需要开启
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set encoding=utf-8
set enc=utf-8
set tabstop=4                 " 设置制表符长度
set softtabstop=4             " 设置软制表符
set shiftwidth=4              " 缩进长度
set number                    " 打开行号
" set relativenumber			  " 设置相对行号
syntax enable				  "开启语法高亮功能
syntax on

" 设置代码折叠为手动
set foldmethod=manual
"打开文件是默认不折叠代码
set foldlevelstart=99


" 十字定位线
set cursorline
set cursorcolumn

highlight CursorLine cterm=none ctermbg=236 guibg=#3F3F3F
highlight CursorColumn cterm=none ctermbg=236 guibg=#3F3F3F



" gui启动参数添加 --no-ext-tabline
" 基本配置============================================================= ]
