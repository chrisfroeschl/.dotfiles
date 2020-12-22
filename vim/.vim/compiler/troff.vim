" File: troff.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Tue 22 Dec 2020 02:59:23 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Compiler plugin for different versions of troff.

if exists('current_compiler')
    finish
endif

let s:keepcpo= &cpoptions
set cpoptions&vim

" older Vim always used :setlocal
if exists(':CompilerSet') != 2
  command -nargs=* CompilerSet setlocal <args>
endif

" decide compiler using one of these
" let g:is_groff
" let g:is_neatroff
" let g:is_hearloom


" If makefile exists and we are not asked to ignore it, we use standard make
" (do not redefine makeprg)
if exists('b:troff_ignore_makefile') || exists('b:troff_ignore_makefile') ||
			\(!filereadable('Makefile') && !filereadable('makefile'))
	" If buffer-local variable set the troff program
	if exists('b:tex_flavor')
		let current_compiler = b:troff_flavor
	elseif exists('g:tex_flavor')
		let current_compiler = g:troff_flavor
	else
		let current_compiler = 'groff'
	endif
	let &l:makeprg=current_compiler
else
	let current_compiler = 'make'
endif

let s:filter=globpath(&runtimepath, 'compiler/filter.sh')

CompilerSet errorformat=%o:<standard\ input>\ (%f):%l:%m,
			\%o:\ <standard\ input>\ (%f):%l:%m,
			\%o:%f:%l:%m,
			\%o:\ %f:%l:%m,
			\%f:%l:\ macro\ %trror:%m,
			\%f:%l:%m,
			\%W%tarning:\ file\ '%f'\\,\ around\ line\ %l:,%Z%m

let &cpoptions = s:keepcpo
unlet s:keepcpo
