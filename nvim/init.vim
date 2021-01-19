" 000      000 000000 0000    0000 000000000   .0000000
"   00    00     00    0000  0000   00     00  00     00
"    00  00      00    00 0000 00   00000000   00
"     0000       00    00  00  00   00     00  00     00
"      00      000000 000      000 000     000 '0000000
"=====================================================

" Load Changes when I write or modifyany setting
au BufWritePost *vim so %


" Active Files
so ~/.config/nvim/plugins.vim       " Plugins to load
so ~/.config/nvim/editor.vim        " Configuration for Editor
so ~/.config/nvim/completion.vim    " Configuration for NVIM builtin completion
so ~/.config/nvim/bindings.vim      " Some Custom defined Key bindings
so ~/.config/nvim/statusline.vim    " Custom statusline

" Disabled Ones
