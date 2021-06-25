lua << EOF
-- 添加C类语言的支持
require'lspconfig'.clangd.setup{}
EOF
