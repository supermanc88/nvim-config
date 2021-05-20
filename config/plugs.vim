call plug#begin('~/.nvim-config/plugged')


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" luochen1990/rainbow 彩虹括号插件
" https://github.com/luochen1990/rainbow
Plug 'luochen1990/rainbow'

" Yggdroot/LeaderF 模糊搜索插件
" https://github.com/Yggdroot/LeaderF
" 需要 pip3 install pynvim
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" scrooloose/nerdcommenter 注释插件
" https://github.com/preservim/nerdcommenter
Plug 'scrooloose/nerdcommenter'

" babaybus/DoxygenToolkit.vim 函数注释插件
" https://github.com/babaybus/DoxygenToolkit.vim
Plug 'babaybus/DoxygenToolkit.vim'

" preservim/nerdtree 目录树插件
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'                    							" 目录树

Plug 'mhinz/vim-startify'


Plug 'vim-airline/vim-airline'                							" 状态栏
Plug 'vim-airline/vim-airline-themes'												" 状态栏主题

Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'kyazdani42/nvim-tree.lua'
" nvim-qt需要添加 --no-ext-tabline
" Plug 'romgrk/barbar.nvim'

" Plug 'romgrk/doom-one.vim'


" dense-analysis/ale 动态检查工具
" https://github.com/dense-analysis/ale
" Plug 'dense-analysis/ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'yianwillis/vimcdoc'
call plug#end()
