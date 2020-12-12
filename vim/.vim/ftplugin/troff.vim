" File: troff.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 12 Dec 2020 03:40:28 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Plugin functionaly for troff files.

augroup AUTOCOMP
	autocmd!
	try
		autocmd BufWrite <buffer> :silent! Make!
	catch /.*/
		echo 'busy'
	endtry
augroup END

setlocal autoindent
