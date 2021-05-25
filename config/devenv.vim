let g:microsoft_visual_studio_12_path = "C:\\Program Files (x86)\\Microsoft Visual Studio 12.0"
let g:windows_kits_path = "C:\\Program Files (x86)\\Windows Kits"
let g:microsoft_visual_studio_12_link_path = "E:\\VisualStudio12"
let g:windows_kits_link_path = "E:\\WindowsKits"

let link_dir = {"C:\\Program Files (x86)\\Microsoft Visual Studio 12.0" : "E:\\VisualStudio12",
			\ "C:\\Program Files (x86)\\Windows Kits" : "E:\\WindowsKits",}

function! MakeDevelopEnv()
	exec "!mklink /D " . g:microsoft_visual_studio_12_link_path . " " . g:microsoft_visual_studio_12_path
	exec "!mklink /D " . g:windows_kits_link_path . " " . g:windows_kits_path
endfunction
