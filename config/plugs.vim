call plug#begin('~/.nvim-config/plugged')
" nvim-treesitter/nvim-treesitter 基于lsp的语法高亮
" https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"copilot ai写代码插件
Plug 'github/copilot.vim'

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

" statusline 插件
"Plug 'vim-airline/vim-airline'                							" 状态栏
Plug 'vim-airline/vim-airline-themes'												" 状态栏主题

" 各种图标
Plug 'kyazdani42/nvim-web-devicons'

" tabline 插件
" buffer 列表
Plug 'akinsho/nvim-bufferline.lua'

" 目录树插件
Plug 'kyazdani42/nvim-tree.lua'
" nvim-qt需要添加 --no-ext-tabline
" Plug 'romgrk/barbar.nvim'

" tpope/vim-fugitive git插件
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" dense-analysis/ale 动态检查工具
" https://github.com/dense-analysis/ale
" Plug 'dense-analysis/ale'

" yianwillis/vimcdoc 中文帮助
" https://github.com/yianwillis/vimcdoc
Plug 'yianwillis/vimcdoc'

" glepnir/galaxyline.nvim nvim statusline 插件
" https://github.com/glepnir/galaxyline.nvim
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" liuchengxu/vista.vim 函数列表插件
" https://github.com/liuchengxu/vista.vim
Plug 'liuchengxu/vista.vim'

" Yggdroot/indentLine 对齐线
" https://github.com/Yggdroot/indentLine
" Plug 'Yggdroot/indentLine'

" indent-blankline.nvim 对齐线插件和 indentLine一起使用
" https://github.com/lukas-reineke/indent-blankline.nvim
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}

" tpope/vim-surround 快速包围插件
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" tpope/vim-repeat 重复上次的动作
" https://github.com/tpope/vim-repeat
Plug 'tpope/vim-repeat'

" ntpeters/vim-better-whitespace 清除额外的空格
" https://github.com/ntpeters/vim-better-whitespace
Plug 'ntpeters/vim-better-whitespace'

" sudormrfbin/cheatsheet.nvim 速查表
" https://github.com/sudormrfbin/cheatsheet.nvim
Plug 'sudormrfbin/cheatsheet.nvim'
" optional 依赖以下3个?
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" neovim/nvim-lspconfig 内置lsp
" https://github.com/neovim/nvim-lspconfig
Plug 'neovim/nvim-lspconfig'

" rmagatti/goto-preview 预览插件
" 此插件依赖内置的lsp
" https://github.com/rmagatti/goto-preview
Plug 'rmagatti/goto-preview'

Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
" neoclide/coc.nvim 补全插件
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'antoinemadec/coc-fzf', {'branch': 'release'}

" https://github.com/joshdick/onedark.vim
Plug 'joshdick/onedark.vim'

Plug 'supermanc88/LeaderF-codebase'

Plug 'ray-x/lsp_signature.nvim'

Plug 'rktjmp/lush.nvim'
Plug 'ViViDboarder/wombat.nvim'				"主题插件，不怎么好看


" 主题插件，不怎么好看
Plug 'Pocco81/Catppuccino.nvim'

" 主题插件，不怎么好看
Plug 'jacoborus/tender.vim'

" 主题插件，感觉还可以
Plug 'srcery-colors/srcery-vim'

" 主题插件，感觉还可以
Plug 'bluz71/vim-nightfly-guicolors'

" 主题插件，感觉还可以
Plug 'gertjanreynaert/cobalt2-vim-theme'

" include header guard
Plug 'drmikehenry/vim-headerguard'
call plug#end()
