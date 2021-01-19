" ,000000. 00000000  .000.  00000000 00     00 ,000000. 00      000000 0000.  000 00000000
" 00          00    .00 00.    00    00     00 00       00        00    0000. 00   00    `
" '000000.    00   .00   00.   00    00     00 '000000. 00        00    00'00.00   0000
"       00    00  .000000000.  00    00     00       00 00        00    00 '0000   00    ,
" '000000'    00 .00       00. 00    `0000000' '000000' 0000000 000000 000  '0000 00000000
" ==========================================================================================


" Tells Git Branch name
fu! GitBranch()
    retu HasGitInit() ? "   ".system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'"):""
endf

" Check if there is Repository or Not
fu! HasGitInit()
    retu strlen(system("git rev-parse --abbrev-ref HEAD 2>/dev/null"))
endf

" Icon to file
fu! FileIcon()
    retu expand('%t') != '' ? '📄' : '⛔'
endf

" Return current file name
fu! FileName()
    retu (expand('%t') != '') ? expand('%:t') : '[No File] '
endf

fu! FileExtension()
    retu expand('%:y')==''? '[NONE]' : '['.&filetype.']'
endf

fu! LastGitCommit()
    retu HasGitInit() ? "  ".system('git log -1 --pretty=format:\%s') : " \Uf417 ".'[No Repository]'
endf

fu! ProjectName()
    retu expand('%:h') == '' ? ' ' : '   '.expand('%:h').' '
endf

" Highlights
hi StatuslineFile                   ctermfg=7 ctermbg=232
hi StatuslineProject                ctermfg=7 ctermbg=4
hi StatuslineSecondarySeparator     ctermfg=232 ctermbg=4
hi StatuslinePrimarySeparator       ctermfg=4 ctermbg=232

se stl=""
se stl+=%#StatuslineFile#%{ProjectName()}
se stl+=%#StatuslineSecondarySeparator#
se stl+=%#StatuslineProject#%{GitBranch()}\ 
se stl+=%#StatuslinePrimarySeparator#
se stl+=%#StatuslineFile#\ %{FileIcon()}\ %{FileName()}\ %{FileExtension()}\ 
se stl+=%#StatuslineSecondarySeparator#
se stl+=%#StatuslineProject#%{LastGitCommit()}\ 
se stl+=%=%n
