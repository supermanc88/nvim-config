" lua <<EOF
" require('goto-preview').setup {
"     width = 120; -- Width of the floating window
"     height = 15; -- Height of the floating window
"     default_mappings = true; -- Bind default mappings
"     debug = true; -- Print debug information
"     opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
"     lsp_configs = {
"       c = {
"         get_config = function(data)
"           return data.uri, { data.range.start.line + 1, data.range.start.character }
"         end
"       };
"       cpp = {
"         get_config = function(data)
"           return data.uri, { data.range.start.line + 1, data.range.start.character }
"         end
"       };
"     }
" }
" EOF
