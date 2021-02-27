" File: grep-operator.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 27 Feb 2021 09:17:20 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Grep operator.

" Mappings {{{

nnoremap <LEADER>g :set operatorfunc=<SID>GrepOperator<CR>g@
vnoremap <LEADER>g :<c-u>call <SID>GrepOperator(visualmode())<CR>

" }}}

" GrepOperator {{{

function! s:GrepOperator(type)
    " Save users unnamed register. 
    let saved_unnamed_register = @@

    " Visual mode.
    if a:type ==# 'v'
        execute "normal! `<v`>y"
    " Normal mode.
    elseif a:type ==# 'char'
        execute "normal! `[v`]y"
    " Grep doesn't search across lines.
    else
        return
    endif

    " Use the above yank in the unnamed registry for grep.
    silent execute "grep! -R " . shellescape(@@) . " ."
    copen
    " We have to redraw, since silent breaks the buffer display.
    redraw!

    " Reset unnamed register to the initial value.
    let @@ = saved_unnamed_register
endfunction

" }}}
