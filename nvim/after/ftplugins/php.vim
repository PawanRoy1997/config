"'000000. '00    00' '000000.
" 00   00  00    00   00   00
" 000000'  00000000   000000'
" 00       00    00   00
",00.     ,00    00. ,00.
"============================

" File Search specific for Laravel Project
set path+=./**
set wildignore+=*/node_modules/*
set wildignore+=*.js

" Plugins
call plug#begin('~/.config/nvim/plugged/')
Plug 'mattn/emmet-vim'
call plug#end()

" Include Search
set include=^use\\s\\zs\\(\\S\\+\\)\\ze\\(;\\\|\ as\\)

function! PathToImport(FileName)
    let parts = GetParts(a:FileName)
    let toBeReplacedWith = OriginParts(parts[0], parts[1])
    let intermediate = MakeReplacements(a:FileName, parts, toBeReplacedWith)
    let path = FormatAsPath(intermediate)
    return path
endfunction

function! GetParts(SomeName)
    return stridx(a:SomeName,'\')!=-1 ? split(a:SomeName,'\') : [a:SomeName, a:SomeName]
endfunction

function! OriginParts(firstPart, secondPart)
    if a:firstPart == 'App'
        let result = ['app',a:secondPart]
    elseif a:firstPart == 'Illuminate'
        let result = ['vendor\\laravel\\framework\\src\\Illuminate', a:secondPart]
    elseif a:firstPart == 'Passport'
        let result = ['vendor\\laravel\\passport\\src', a:secondPart]
    elseif a:firstPart == 'Faker'
        let result = ['vendor\\fzaninotto\\faker\\src\\Faker', a:secondPart]
    elseif a:firstPart == 'Ramsey'
        if a:secondPart == 'Collection'
            let result = ['vendor\\ramsey', 'collection\\src']
        else
            let result = ['vendor\\ramsey', 'uuid\\src']
        endif
    elseif a:firstPart == 'Psr'
        let result = ['vendor\\psr', 'container\\src']
    elseif a:firstPart == 'League'
        let result = ['vendor\\league', 'commonmark\\src']
    else
        let result = [a:firstPart, a:secondPart]
    endif
    return result
endfunction

function! MakeReplacements(FileName, parts, toBeReplacedWith)
    let resultOfFirstReplacement = substitute(a:FileName, a:parts[0], a:toBeReplacedWith[0],'')
    let finalResult = substitute(resultOfFirstReplacement, a:parts[1], a:toBeReplacedWith[1],'')
    return finalResult
endfunction

function! FormatAsPath(nameWithOrigin)
    return substitute(a:nameWithOrigin, '\\','\/','g').'.php'
endfunction

setlocal includeexpr=PathToImport(v:fname)
