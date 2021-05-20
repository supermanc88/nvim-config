" [ dense-analysis/ale 动态检查工具 配置=============================================================

" dense-analysis/ale 动态检查工具 配置
" 具体配置请参考： https://github.com/dense-analysis/ale/tree/master/doc
" 抄自 https://skywind3000.com/blog/archives/2084/

" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
" 设置对应语言的linter的时候，请确认安装了
" c和c++环境下面是用的clang，需要安装clang或gcc，配置到环境变量
" 在安装YCM后，clangd也被安装，如果配置到环境变量后，clangd的lsp
" 也会被启用。
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

" 不希望ale运行除我明确要求的内容以外的其他内容
" 感觉好像没有生效，但目前不影响其他插件，先这么放着吧
" let g:ale_linters_explicit = 1
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'


" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
" 报错信息格式
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" 以下两句规定了如果在normal模式下文件改变及以及离开insert模式才运行linter
" 这是相对保守的做法，如果没有的话，会导致YCM的补全框频繁的刷新
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" 我把YCM的错误检测提示标志关了，不然这两个哪个在后面哪个生效
" let g:airline#extensions#ale#enabled = 1
" 这里就是传给编译器的参数
" 这里需要根据每个项目的不同去修改它的引用头文件及宏定义

" CentOS6.10内核编译参数
" 暂时不知道怎么换行
let g:ale_c_cc_options = ''

" let g:ale_cpp_cc_options = '-Wall -std=c++11'
" check用人家默认的就可以了 '--enable=style' 不知道是什么
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''

hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

" 查看报错信息
noremap <Leader>d :ALEDetail<CR>


" 创建一个函数用来选择cc_options
function! SelectCcOptions()

let g:CcOptionsCollection = [
\ {'2.6.32-754' : '-I. -std=c99
\ -IS:\\usr\\src\\kernels\\2.6.32-754.el6.x86_64\\include 
\ -IS:\\usr\\src\\kernels\\2.6.32-754.el6.x86_64\\arch\\x86\\include 
\ -DMODULE -D__KERNEL__ -D__GNUC__=4 -DCONFIG_64BIT',},
\ {'UOSV21-5.4.50' : '-I. -std=c99
\ -IQ:\\usr\\src\\linux-headers-5.4.50-amd64-desktop\\include
\ -IQ:\\usr\\src\\linux-headers-5.4.50-amd64-desktop\\arch\\x86\\include
\ -DMODULE -D__KERNEL__ -D__GNUC__=8 -DCONFIG_64BIT'},
\ {'Windows Driver Kits v8.1' : '-I. -std=c99
\ -IE:\\WindowsKits\\8.1\\Include\\km\\crt
\ -IE:\\WindowsKits\\8.1\\Include\\km
\ -IE:\\WindowsKits\\8.1\\Include\\shared
\ -D_WIN64 -D_AMD64_ -DAMD64 -DDEPRECATE_DDK_FUNCTIONS=1 -DMSC_NOOPT
\ -D_WIN32_WINNT=0x0601 -DWINVER=0x0601 -DWINNT=1 -DNTDDI_VERSION=0x06010000'},
\ ]

	" echo len(g:CcOptionsCollection)

	let i = 0
	let selectList = []
	while i < len(g:CcOptionsCollection)
		" echo i
		let tempDict = get(g:CcOptionsCollection, i, "")
		echo string(i) . ":" . string(keys(tempDict))
		let i += 1
		call add(selectList, string(keys(tempDict)))
	endwhile
	
	echo "Input Your Select:"
	
	" let userSelect = inputlist(selectList)
	" echo userSelect
	
	let userInput = getchar()
	echo nr2char(userInput)
	
	let tempDict = get(g:CcOptionsCollection, nr2char(userInput), {"NONE" : ""})
	
	if keys(tempDict)[0] == "NONE"
		let g:CurrentCcOptions = ''
	else
		let g:CurrentCcOptions = values(tempDict)[0]
	endif
	
	echo g:CurrentCcOptions
	
	" echo g:CcOptionsCollection
	
	let g:ale_c_cc_options = g:CurrentCcOptions
	
	" 重新载入打开的文件
	bufdo e

endfunction

function! GetCcOptions()
	echo g:ale_c_cc_options
endfunction

" ale select sdk
noremap <leader>ss : call SelectCcOptions()<CR>

" ale show current sdk
noremap <leader>gs : call GetCcOptions()<CR>

" dense-analysis/ale 动态检查工具 配置============================================================= ]
