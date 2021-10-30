" 这里是自己定义的一些快捷键
"
" 关闭除此之外的所有buffer
command! BufOnly silent! execute "%bd|e#|bd#"

" 关闭其它buf
noremap <silent> <C-2> :%bd\|e#<CR>

" 关闭当前buf
noremap <silent> <C-3> :bd%<CR>
