" [ Yggdroot/LeaderF 模糊搜索插件 配置=============================================================

" 此插件需要 GNU GLOBAL(gtags) 的配合
" Windows下载地址 https://www.gnu.org/software/global/download.html
" 正则表达式/字符串检索 Leaderf rg ...
" ripgrep下载地址 https://github.com/BurntSushi/ripgrep/releases
" 需要安装ctags
" 下载地址 https://github.com/universal-ctags/ctags-win32/releases
" 以上安装后，均需要加入到环境变量中
" 以下是默认的配置
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

" 气泡模式，就是在窗口中央弹出一个窗口
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
" let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" 使用 ctrl + p 查找文件
let g:Lf_ShortcutF = '<c-p>'

" 键盘映射
" 由于leaderf映射了 ctrl-f和ctrl-b，所以上下翻页使用ctrl-d和ctrl-u
" noremap 可在 普通、可视、选择、操作符等待 下工作
" CTRL-U 使窗口在缓冲区中向上滚动。滚动的行数由 'scroll' 选项指定 (默认设置为半个屏幕)
" CTRL-R 重做 [count] 次被撤销的更改。
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>

" 使用rg进行查找
" expand("<cword>") 是取当前光标下的单词
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" gtags 数据库文件存储在$HOME/.LfCache/gtags/%PATH%OF%YOUR%PROJECT/
" should use `Leaderf gtags --update` first
" gtags是否自动生成
" 当代码有更改并且已经有 gtags 数据库生成时，更改的代码会自动同步到 gtags 数据库（即使g:Lf_GtagsAutoGenerate是0）
" 只有在项目根目录下有g:Lf_RootMarkers（默认值是['.git', '.hg', '.svn']）里面指定的文件或目录时，LeaderF 才会自动生成 gtags 数据库；
" 否则只能手动生成 gtags 数据库：Leaderf gtags --update，但是当代码有更改时，gtags 数据库依然可以自动更新。
" 用来指定 gtags.conf 文件的路径，一般情况下不需要指定，默认值就可以很好地工作。
" 对于Windows上，如果相对于gtags.exe所在路径有../share/gtags/gtags.conf，也不需要指定该选项。
" 如果需要用户自己特有的针对 gtags 的配置，可以指定用户的配置文件。
" 也可以在vimrc里设置g:Lf_Gtagsconf达到同样的目的
" 需要把 gtags.exe的所在路径加入环境变量 D:\Vim\plugged\glo665wb\bin
" 错误信息查看 :mess
" 当出现 gtags seems corrupted 时，可能是tags生成目录有文件，先删除了，再重新生成
let g:Lf_GtagsAutoGenerate = 1
" let g:Lf_Gtagsconf = '$VIMRUNTIME/../plugged/glo665wb/share/gtags/gtags.conf'

" 开启此功能时，需要python安装以下模块
" pip install pygments
let g:Lf_Gtagslabel = 'native-pygments'

" 查找引用
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" 查找定义
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" 再次调用刚才的命令
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" 跳转到下一个tag
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" 跳转到上一个tag
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

" F2显示出当前文件的函数列表
noremap <F2> :LeaderfFunction!<cr>

highlight clear Lf_hl_popup_window
highlight Lf_hl_popup_window guibg=#131517

" Yggdroot/LeaderF 模糊搜索插件 配置============================================================= ]
