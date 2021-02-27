" File: BufOnly.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 27 Feb 2021 09:16:42 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" BufOnly commands.

" Precheck {{{

if exists('g:BufonlyLoaded') || &cp
  finish
end
let g:BufonlyLoaded = 1

" }}}

" Commands {{{

command! -nargs=? -complete=buffer -bang Bonly
    \ :call utility#BufOnly#BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call utility#BufOnly#BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call utility#BufOnly#BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call utility#BufOnly#BufOnly('<args>', '<bang>')

" }}}
