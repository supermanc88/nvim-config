let l:microsoft_visual_studio_12_path = "C:\\Program Files (x86)\\Microsoft Visual Studio 12.0"
let l:windows_kits_path = "C:\\Program Files (x86)\\Windows Kits"
let l:microsoft_visual_studio_12_link_path = "E:\\VisualStudio12"
let l:windows_kits_link_path = "E:\\WindowsKits"

let link_dir = {"C:\\Program Files (x86)\\Microsoft Visual Studio 12.0" : "E:\\VisualStudio12",
			\ "C:\\Program Files (x86)\\Windows Kits" : "E:\\WindowsKits",}

function! MakeDevelopEnv()
	exec "!mklink /D " . l:microsoft_visual_studio_12_link_path . " " . l:microsoft_visual_studio_12_path
	exec "!mklink /D " . l:windows_kits_link_path . " " . l:windows_kits_path
endfunction
