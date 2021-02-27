" File: LastModified.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 27 Feb 2021 08:42:20 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" LastModified commands.

augroup LastChange
	autocmd!
	autocmd BufWritePre * :call utility#LastModified#UpdateWithLastMod()
augroup END

command! -nargs=0 NOMOD :let b:nomod = 1
command! -nargs=0 MOD   :let b:nomod = 0
