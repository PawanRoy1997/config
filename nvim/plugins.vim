" 0000000  00      00     00  '0000000.  000000 0000.  000 .000000
"  00   00 00      00     00  00     00    00    0000. 00  00
"  000000  00      00     00  00           00    00'00.00  '000000.
"  00      00      00     00  00   0000    00    00 '0000        00
" 000      0000000 '0000000'  '00000'000 000000 000  '0000  000000'
" =================================================================

" Start Loading Plugins
" ~~~~~~~~~~~~~~~~~~~~~
call plug#begin('~/.config/nvim/plugged')

" Active Plugins
" ``````````````

  Plug 'jiangmiao/auto-pairs'           " For bracket completion
  Plug 'junegunn/fzf',{'do':{->fzf#install()}}
  Plug 'junegunn/fzf.vim'               " Open Fzf in separate window
  Plug 'SirVer/Ultisnips'               " For getting Snippets
  Plug 'easymotion/vim-easymotion'      " For easy motion
  Plug 'mattn/emmet-vim'                " For Emmet Feature
  Plug 'vim-scripts/AutoComplPop'       " For Popup Completion Menu

" Non-Active Pplugins
" ```````````````````

call plug#end()

" Plugin Specific Settings
" ~~~~~~~~~~~~~~~~~~~~~~~~
source ~/.config/nvim/easyMotion.vim    " Easy motion Config
