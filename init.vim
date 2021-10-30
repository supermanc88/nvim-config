if exists('g:vscode')

else
	" load global-config
	exec 'source ' . stdpath('config') . '/global-config.vim'

	if !exists(":GuiFont")
		exec 'source ' . stdpath('config') . '/nvim_gui_shim.vim'
	endif

	GuiFont! JetBrainsMono Nerd Font:h11

	let g:chm_nvim_root_dir = stdpath('config')

	let g:chm_nvim_config_dir = g:chm_nvim_root_dir . '/config'
	let g:chm_nvim_keymap_dir = g:chm_nvim_root_dir . '/keymap'


	" 函数名需要大写
	command! -nargs=1 ChmLoadConfigScript exec 'source '.g:chm_nvim_config_dir.'/'.'<args>'
	command! -nargs=1 ChmLoadKeymapScript exec 'source '.g:chm_nvim_keymap_dir.'/'.'<args>'
	command! -nargs=1 ChmLoadFullPathScript exec 'source '.'<args>'


	" 获取指定目录下的所有文件
	function ChmGetFileList(filePath,  filePattern = '*.vim')
		return split(globpath(a:filePath, a:filePattern), '\n')
	endfunction


	let keymap_file_list = ChmGetFileList(g:chm_nvim_keymap_dir)

	let config_file_list = ChmGetFileList(g:chm_nvim_config_dir)

	" 加载config目录下的所有文件
	for file in config_file_list
	"	echo file
		exec 'source ' fnameescape(file)
	endfor


	" 加载keymap目录下的所有文件
	for file in keymap_file_list
	"	echo file
		exec 'source ' fnameescape(file)
	endfor

	let mapleader = "\<space>"

endif
