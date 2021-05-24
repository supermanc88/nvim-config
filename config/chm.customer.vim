" [ 自定义功能配置=============================================================

" 打开自己写的常用的vim快捷键
let g:helpTxtOpened = 0
function! OpenMyHelpTxtToggle()
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
" noremap <F3> :bn<CR>
" noremap <F4> :bp<CR>


" 获取指定目录下的所有文件
function! ChmGetBuildFileList(filePath,  filePattern = '*.txt')
	return split(globpath(a:filePath, a:filePattern), '\n')
endfunction


" 给当前目录设置编译脚本
function! CHMSetBuildFile()
	let buildcfg_dir = stdpath('config') . '/buildcfg'
	echo buildcfg_dir
	let filelist = ChmGetFileList(buildcfg_dir, '*.txt')
	echo filelist
	let i = 0
	while i < len(filelist)
		echo string(i) . ":" . filelist[i]
		let i+=1
	endwhile
"	for file in filelist
"		echo file
"	endfor
	let current_dir = expand('%:h')
	echo current_dir

	echo "Input Your Select:"
	let userInput = getchar()
	echo nr2char(userInput)
	if has('win32')
		exec "!copy " . filelist[nr2char(userInput)] . " " . current_dir . "/compile_flags.txt"
	else
		exec "!cp " . filelist[nr2char(userInput)] . " " . current_dir . "/compile_flags.txt"
	endif

endfunction
" 自定义功能配置============================================================= ]
