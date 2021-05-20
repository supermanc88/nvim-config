" [ 自定义功能配置=============================================================

" 打开自己写的常用的vim快捷键
let g:helpTxtOpened = 0
function OpenMyHelpTxtToggle()
"	echo g:helpTxtOpened
"	let g:helpTxtOpened = bufexists('C:\\Users\\CHM\\OneDrive\\工作\\常用\\vim快捷键.txt')
"	let g:helpTxtOpened = execute "ls"
"	echo g:helpTxtOpened
	if g:helpTxtOpened == 1
		:bd C:\\Users\\CHM\\OneDrive\\工作\\常用\\vim快捷键.txt
		let g:helpTxtOpened = 0
	else
		:vsp C:\\Users\\CHM\\OneDrive\\工作\\常用\\vim快捷键.txt
		execute "normal \<C-W>\<S-L>"
		:vertical resize -20
		let g:helpTxtOpened = 1
	endif
endfunction
" noremap <F1> :call OpenMyHelpTxt()<cr><C-W><S-L><CR>:vertical resize -20<CR>
noremap <F1> :call OpenMyHelpTxtToggle()<cr>


" 缓冲切换快捷键映射
noremap <F3> :bn<CR>
noremap <F4> :bp<CR>
" 自定义功能配置============================================================= ]
