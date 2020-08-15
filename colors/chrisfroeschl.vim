" Initialization {{{
	set background=dark

	hi clear
	if exists('syntax_on')
		syntax reset
	endif

	let g:colors_name = 'chrisfroeschl'

	if ! has('gui_running')
		if &t_Co != 256
			echoe 'The ' . g:colors_name . ' color scheme requires gvim or a 256-color terminal'

			finish
		endif
	endif
" }}}
" Color dictionary parser {{{
	function! s:ColorDictParser(color_dict)
		for [group, group_colors] in items(a:color_dict)
			exec 'hi ' . group
				\ . ' ctermfg=' . (group_colors[0] == '' ? 'NONE' :       group_colors[0])
				\ . ' ctermbg=' . (group_colors[1] == '' ? 'NONE' :       group_colors[1])
				\ . '   cterm=' . (group_colors[2] == '' ? 'NONE' :       group_colors[2])
				\
				\ . '   guifg=' . (group_colors[3] == '' ? 'NONE' : '#' . group_colors[3])
				\ . '   guibg=' . (group_colors[4] == '' ? 'NONE' : '#' . group_colors[4])
				\ . '     gui=' . (group_colors[5] == '' ? 'NONE' :       group_colors[5])
		endfor
	endfunction
" }}}


" TODO Update GUI values to match CT ones.
"	   | Highlight group                |  CTFG |  CTBG |    CTAttributes | || |   GUIFG |    GUIBG |   GUIAttributes |
"	   |--------------------------------|-------|-------|-----------------| || |---------|----------|-----------------|
call s:ColorDictParser({
	\   'Normal'                      : [    231,     16,               '',      'ffffff',  '000000',               '']
	\ , 'Visual'                      : [     16,    231,               '',      '585858',  'dadada',               '']
	\
	\ , 'CursorLine'                  : [     '',    235,               '',            '',  '3a3a3a',               '']
	\ , 'CursorLineNr'                : [    231,     '',               '',      'ffffff',  '585858',               '']
	\ , 'CursorColumn'                : [    231,     '',               '',      'ffffff',  '3a3a3a',               '']
	\
	\ , 'SignColumn'                  : [    231,     '',           'bold',      'ffffff',  '121212',           'bold']
	\ , 'ColorColumn'                 : [     '',    240,               '',            '',  '262626',               '']
	\
	\ , 'LineNr'                      : [    231,     '',               '',      '767676',  '262626',               '']
	\ , 'VertSplit'                   : [    231,     '',               '',      '585858',  '1c1c1c',               '']
	\
	\ , 'Directory'                   : [     46,     '',           'bold',      'afaf5f',        '',           'bold']
	\ , 'Underlined'                  : [    196,     '',           'bold',      'af5f00',        '',               '']
	\
	\ , 'WarningMsg'                  : [    231,    166,           'bold',      'ff0000',        '',           'bold']
	\ , 'ErrorMsg'                    : [    231,    160,           'bold',      'ff0000',        '',           'bold']
	\ , 'MsgArea'                     : [    16,     231,           'bold',      'ff0000',        '',           'bold']
	\ , 'Tooltip'                     : [    16,     231,           'bold',      'ff0000',        '',           'bold']
	\
	\ , 'Comment'                     : [    245,     '',           'bold',      '767676',  '121212',               '']
	\
	\ , 'Constant'                    : [     22,     '',               '',      'af875f',        '',           'bold']
	\ , 'Number'                      : [     21,     '',               '',      'af875f',        '',           'bold']
	\ , 'Float'                       : [     21,     '',               '',      'af875f',        '',           'bold']
	\ , 'Special'                     : [    220,     '',           'bold',      'afd787',        '',               '']
	\ , 'Statement'                   : [     46,     '',           'bold',      'd7d787',        '',           'bold']
	\ , 'PreProc'                     : [     51,     '',           'bold',      '9e9e9e',        '',               '']
	\ , 'Type'                        : [     93,     '',           'bold',      '5f87af',        '',           'bold']
	\ , 'Error'                       : [    231,    160,               '',      'ff8700',  'af0000',               '']
	\ , 'Identifier'                  : [    200,     '',               '',      'd7af5f',        '',               '']
	\ , 'Search'                      : [     16,    226,               '',      '000000',  'ffff5f', 'underline,bold']
	\
	\ , 'TODO'                        : [     16,    220,           'bold',      'ffff87',  '875f00',           'bold']
	\
	\ , 'xmlTag'                      : [     46,     '',           'bold',      'afd75f',        '',           'bold']
	\ , 'xmlTagName'                  : [    231,     '',               '',      'bcbcbc',        '',               '']
	\ , 'xmlEndTag'                   : [     46,     '',           'bold',      'ff875f',        '',           'bold']
	\	
	\ , 'cssImportant'                : [    160,     '',           'bold',      'd75f00',        '',           'bold']  
	\	
	\ , 'DiffAdd'                     : [     22,     '',               '',      '87d700',  '005f00',               '']
	\ , 'DiffChange'                  : [    220,     '',               '',      'ffd700',  '875f00',               '']
	\ , 'DiffDelete'                  : [    160,     '',               '',      'd70000',        '',               '']
	\ , 'DiffText'                    : [    220,     '',               '',      'ffd700',  '875f00',   'reverse,bold']
    \ })

hi link htmlTag            xmlTag
hi link htmlTagName        xmlTagName
hi link htmlEndTag         xmlEndTag

hi link diffAdded          DiffAdd
hi link diffChanged        DiffChange
hi link diffRemoved        DiffDelete
