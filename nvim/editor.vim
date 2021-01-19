" 00000000 00000000. 000000 00000000 ,000000  0000000
"  00    `  00    00   00      00    00    00  00   00
"  0000     00    00   00      00    00    00  000000
"  00    ,  00    00   00      00    00    00  00   00
" 00000000 00000000' 000000   0000   `000000  000   000
" =====================================================

" Language to be used for spell check
language en_IN.utf8

" Switch Buffers when not saved Current Buffer
se hidden

" Line Number
se number

" Set tab size
se shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

" Show spaces and tabs
se listchars=tab:⥤⥤›,trail:◯
se list

" Backup
se nobackup
se noswapfile

" FuzzyFileSearch
se path+=**
se wildignore+=*.git

" Backward Comaptibility
se nocompatible

" NoWordWrap
se nowrap

" Modes
se noshowmode

" File Type
filetype plugin indent on

" Highlight Last Column
hi ColorColumn ctermbg=239
call matchadd('ColorColumn','\%120v',120)

" Theme
colorscheme vscode

" Netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_winsize=25

" Better Search
function! HLNext(blinktime)
    hi BlackOnBlack ctermfg=234 ctermbg=234
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let hide_part = '\%<'.lnum.'l.'
                \.'\|'
                \.'\%'.lnum.'l\%<'.col.'v.'
                \.'\|'
                \.'\%'.lnum.'l\%>'.(col+matchlen-1).'v.'
                \.'\|'
                \.'\%>'.lnum.'l.'
    let hide = matchadd('BlackOnBlack',hide_part,101)
    redraw
    exec 'sleep'.float2nr(a:blinktime*1000).'m'
    call matchdelete(hide)
    redraw
endfunction
