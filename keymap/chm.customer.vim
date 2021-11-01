" 这里是自己定义的一些快捷键
"
" 关闭除此之外的所有buffer
command! BufOnly silent! execute "%bd|e#|bd#"

" 关闭其它buf 在命令行模式下此快捷键不可用，使用Bufonly
" 这是由于在命令行模式的输入是由内核接管的，所以不能使用此快捷键
noremap <silent> <C-2> :%bd\|e#<CR>

" 关闭当前buf
noremap <silent> <C-3> :bd%<CR>
" 用quit来表示关闭当前buf
noremap <silent> <C-Q> :bd%<CR>
