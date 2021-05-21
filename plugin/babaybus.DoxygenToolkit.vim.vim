" [ babaybus/DoxygenToolkit.vim 函数注释插件 配置=============================================================
let g:DoxygenToolkit_briefTag_funcName = "yes"
" for C++ style, change the '@' to '\'
" default C++ comments are : /** ... */. But if you prefer to use ///
" Doxygen comments just add 'let g:DoxygenToolkit_commentType = "C++"'
" let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre = "\\brief "
let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
let g:DoxygenToolkit_paramTag_pre = "\\param "
let g:DoxygenToolkit_returnTag = "\\return "
let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_authorTag = "\\author "
let g:DoxygenToolkit_versionTag = "\\version "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_classTag = "\\class "
let g:DoxygenToolkit_authorName = "Heming Cheng, supermanc88@gmail.com"
let g:doxygen_enhanced_color = 1
" 不生成多余的换行
let g:DoxygenToolkit_compactDoc = "yes"
" babaybus/DoxygenToolkit.vim 函数注释插件 配置============================================================= ]
