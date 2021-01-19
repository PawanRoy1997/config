" 0000000. 000000 0000.  000 0000000. 000000 0000.  000 '0000000. .000000
"  00   00   00    0000. 00   00   00   00    0000. 00  00     00 00
"  000000    00    00'00.00   00   00   00    00'00.00  00        '000000.
"  00   00   00    00 '0000   00   00   00    00 '0000  00   0000       00
" 0000000' 000000 000  '0000 0000000' 000000 000  '0000 '00000'000 000000'
" ========================================================================

" Give commands without shift
nnoremap : ;
nnoremap ; :

" Fuzzy File Find
nnoremap <c-p> :FZF<cr>

" Better Search
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <sileNt> N N:call HLNext(0.4)<cr>

" I need It.
" jj mapped to Esc key to generate bracket wrap commands
inoremap jj <Esc>

" Wrap Commands For various brackets
vnoremap <silent>[ :norm `<i[jjx`>lli]jj<cr>
vnoremap <silent>] :norm `<i[jjx`>lli]jj<cr>
vnoremap <silent>{ :norm `<i{jjx`>lli}jj<cr>
vnoremap <silent>} :norm `<i{jjx`>lli}jj<cr>
vnoremap <silent>( :norm `<i(jjx`>lli)jj<cr>
vnoremap <silent>) :norm `<i(jjx`>lli)jj<cr>
vnoremap <silent>' :norm `<i'jjx`>lli'jj<cr>
vnoremap <silent>" :norm `<i"jjx`>lli"jj<cr>
vnoremap <silent>` :norm `<i`jjx`>lli`jj<cr>
