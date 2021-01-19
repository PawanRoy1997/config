" 00      00 .000000  .0000000. .0000000. 0000000. 00000000
"  00    00  00       00        00     00  00   00  00    `
"   00  00   '000000. 00        00     00  00   00  0000
"    0000          00 00        00     00  00   00  00    ,
"     00      000000' '0000000' '0000000' 0000000' 00000000
" ===========================================================

if version > 580
    hi clear
	if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="vscode"

set background=dark                             " Background

hi PmenuSel ctermbg=4 ctermfg=white" Completion Menu colors
hi Pmenu ctermfg=245 ctermbg=0

                                                " Constant
hi Constant ctermfg=97

set cursorline                                  " Cursor Line
hi CursorLine ctermbg=0 cterm=none

                                                " Line Number
hi LineNr ctermbg=236 ctermfg=246
hi CursorLineNr ctermbg=darkgrey ctermfg=white cterm=italic

                                                " Comment
hi Comment ctermfg=darkgrey

                                                " File Management
hi Directory ctermfg=92
hi StartifyFile ctermfg=98

                                                " Window Split
hi VertSplit ctermfg=8 ctermbg=8

                                                " Syntax
hi Type ctermfg=69
hi Statement ctermfg=63

                                                " End of Line
hi ColorColumn ctermbg=239

                                                " Folded Code
hi Folded ctermbg=234  ctermfg=243