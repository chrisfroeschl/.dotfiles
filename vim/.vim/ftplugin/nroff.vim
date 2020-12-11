augroup AUTOCOMP
	autocmd!
	try
		autocmd BufWrite <buffer> :silent! Make!
	catch /.*/
		echo 'busy'
	endtry
augroup END

setlocal autoindent
