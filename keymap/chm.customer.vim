" 关闭除此之外的所有buffer
command! BufOnly silent! execute "%bd|e#|bd#"

noremap <silent> <C-2> :%bd\|e#<CR>
