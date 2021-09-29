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

" 使用 :TSInstallInfo 查看安装的语言支持
" 使用 :TSInstall <language> 安装语言
" TSInstall c
" TSInstall cpp
" TSInstall go
" TSInstall vim
" TSInstall python
" TSInstall javascript
"
" 可能会遇到以下错误
" No C compiler found!
" 需要把gcc或clang或cc加入到环境变量中
