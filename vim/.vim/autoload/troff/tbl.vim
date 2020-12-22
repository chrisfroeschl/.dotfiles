" File: tbl.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Tue 22 Dec 2020 02:51:10 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Completion for tbl sections.

let s:tbl = ['allbox', 'box', 'center', 'delim(', 'doublebox', 'expand', 'frame', 'linesize(', ]
let s:gnu_tbl = [ 'decimapoint(', 'nokeep', 'nospaces', 'nowarn', 'tab(' ]

function! troff#tbl#TblComplete(shortcontext)
	return s:tbl
endfunction
