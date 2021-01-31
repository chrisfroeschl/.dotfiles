" File: troff.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sun 31 Jan 2021 03:00:54 PM CET
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

set nosmartindent

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

augroup TROFF_AUTOCOMPILE
    " TODO This doesnt feel right...
    "autocmd!
    try
	autocmd BufWritePost <buffer> :make!
    catch /.*/
	echo 'busy'
    endtry
augroup END
