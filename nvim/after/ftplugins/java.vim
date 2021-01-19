set include=^import\\s\\zs\\(\\S\\+\\)\\ze;

function! PathToImport(FileName)
    echo substitute(a:FileName, '\.','/','g').'.java'
endfunction