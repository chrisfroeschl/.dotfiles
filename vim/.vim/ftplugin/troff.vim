" File: troff.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Tue 22 Dec 2020 03:31:01 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Plugin functionality for troff.

" Only do this when not done yet for this buffer.
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

if !exists('g:troff_text_obj_enabled')
	let g:troff_text_obj_enabled = 1
endif

if !exists('g:groff_install_prefix')
    let g:groff_install_prefix='/usr/share'
endif

" User specified macro directory.
if !exists('g:troff_macro_dir')
	let g:troff_macro_dir='/usr/share/groff/1.19.2/tmac'
endif

" Allow for sourcing local macro packages.
setlocal include=^\\.m\\?so
