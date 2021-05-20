" load global-config
exec 'source ' . stdpath('config') . '/global-config.vim'


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

for file in config_file_list
	echo file
	exec 'source ' fnameescape(file)
endfor

for file in keymap_file_list
	echo file
	exec 'source ' fnameescape(file)
endfor


"bufferline
lua <<EOF
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

require'nvim-web-devicons'.get_icons()
EOF

set termguicolors
" In your init.{vim|lua}
" lua require("bufferline").setup{}
lua require('plugin.nvim-bufferline')
"bufferline




let mapleader = "\<space>"


lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  }
}
EOF

