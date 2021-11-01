" 不使用<tab> 重新映射一个按键用来接受提示信息。
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")

let g:copilot_no_tab_map = v:true
