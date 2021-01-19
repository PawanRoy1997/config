set include=^import\\s\\zs\\(\\S\\+\\)\\ze;

function! PathToImport(FileName)
    return FileLocation(a:FileName).'.kt'
endfunction

function! FileLocation(FileName)
    return substitute(a:FileName, '\.','/','g')
endfunction


setlocal includeexpr=PathToImport(v:FileName)