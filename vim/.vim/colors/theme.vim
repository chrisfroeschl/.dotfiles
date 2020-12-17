" File: theme.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Thu 17 Dec 2020 09:44:56 AM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" My Vim theme.

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='theme'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Global Settings:

if !exists('g:theme_bold')
  let g:theme_bold=1
endif
if !exists('g:theme_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:theme_italic=1
  else
    let g:theme_italic=0
  endif
endif
if !exists('g:theme_undercurl')
  let g:theme_undercurl=1
endif
if !exists('g:theme_underline')
  let g:theme_underline=1
endif
if !exists('g:theme_inverse')
  let g:theme_inverse=1
endif

if !exists('g:theme_guisp_fallback') || index(['fg', 'bg'], g:theme_guisp_fallback) == -1
  let g:theme_guisp_fallback='NONE'
endif

if !exists('g:theme_improved_strings')
  let g:theme_improved_strings=0
endif

if !exists('g:theme_improved_warnings')
  let g:theme_improved_warnings=0
endif

if !exists('g:theme_termcolors')
  let g:theme_termcolors=256
endif

if !exists('g:theme_invert_indent_guides')
  let g:theme_invert_indent_guides=0
endif

" Palette:

" Setup palette dictionary.
let s:gb = {}

" Fill it with absolute colors.
let s:gb.dark0       = ['#000000',  16]
let s:gb.dark1       = ['#3c3836', 237]
let s:gb.dark2       = ['#504945', 239]
let s:gb.dark3       = ['#665c54', 241]
let s:gb.dark4       = ['#7c6f64', 243]

let s:gb.gray_245    = ['#928374', 245]
let s:gb.gray_244    = ['#928374', 244]

let s:gb.light0      = ['#ffffff', 15]
let s:gb.light1      = ['#ebdbb2', 223]
let s:gb.light2      = ['#d5c4a1', 250]
let s:gb.light3      = ['#bdae93', 248]
let s:gb.light4      = ['#a89984', 246]
let s:gb.light4_256  = ['#a89984', 246]

let s:gb.red     = ['#800000', 1]
let s:gb.green   = ['#005f00', 22]
let s:gb.yellow  = ['#af8700', 136]
let s:gb.blue    = ['#0087d7', 32]
let s:gb.purple  = ['#d3869b', 147]
let s:gb.aqua    = ['#8ec07c', 111]
let s:gb.orange  = ['#fe8019', 208]

let s:gb.neutral_red    = ['#cc241d', 124]
let s:gb.neutral_green  = ['#98971a', 106]
let s:gb.neutral_yellow = ['#d79921', 172]
let s:gb.neutral_blue   = ['#458588', 66]
let s:gb.neutral_purple = ['#b16286', 132]
let s:gb.neutral_aqua   = ['#689d6a', 72]
let s:gb.neutral_orange = ['#d65d0e', 166]

" Setup Emphasis:

let s:bold = 'bold,'
if g:theme_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:theme_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:theme_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:theme_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:theme_inverse == 0
  let s:inverse = ''
endif

" Setup Colors:

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']

  let s:bg0  = s:gb.dark0

  let s:bg1  = s:gb.dark1
  let s:bg2  = s:gb.dark2
  let s:bg3  = s:gb.dark3
  let s:bg4  = s:gb.dark4

  let s:gray = s:gb.gray_245

  let s:fg0 = s:gb.light0
  let s:fg1 = s:gb.light1
  let s:fg2 = s:gb.light2
  let s:fg3 = s:gb.light3
  let s:fg4 = s:gb.light4

  let s:fg4_256 = s:gb.light4_256

  let s:red    = s:gb.red
  let s:green  = s:gb.green
  let s:yellow = s:gb.yellow
  let s:blue   = s:gb.blue
  let s:purple = s:gb.purple
  let s:aqua   = s:gb.aqua
  let s:orange = s:gb.orange

" Reset to 16 colors fallback.
if g:theme_termcolors == 16
  let s:bg0[1]    = 0
  let s:fg4[1]    = 7
  let s:gray[1]   = 8
  let s:red[1]    = 9
  let s:green[1]  = 10
  let s:yellow[1] = 11
  let s:blue[1]   = 12
  let s:purple[1] = 13
  let s:aqua[1]   = 14
  let s:fg1[1]    = 15
endif

" Save current relative colors back to palette dictionary
let s:gb.bg0 = s:bg0
let s:gb.bg1 = s:bg1
let s:gb.bg2 = s:bg2
let s:gb.bg3 = s:bg3
let s:gb.bg4 = s:bg4

let s:gb.gray = s:gray

let s:gb.fg0 = s:fg0
let s:gb.fg1 = s:fg1
let s:gb.fg2 = s:fg2
let s:gb.fg3 = s:fg3
let s:gb.fg4 = s:fg4

let s:gb.fg4_256 = s:fg4_256

let s:gb.red    = s:red
let s:gb.green  = s:green
let s:gb.yellow = s:yellow
let s:gb.blue   = s:blue
let s:gb.purple = s:purple
let s:gb.aqua   = s:aqua
let s:gb.orange = s:orange

" Setup Terminal Colors For Neovim:

if has('nvim')
  let g:terminal_color_0 = s:bg0[0]
  let g:terminal_color_8 = s:gray[0]

  let g:terminal_color_1 = s:gb.neutral_red[0]
  let g:terminal_color_9 = s:red[0]

  let g:terminal_color_2 = s:gb.neutral_green[0]
  let g:terminal_color_10 = s:green[0]

  let g:terminal_color_3 = s:gb.neutral_yellow[0]
  let g:terminal_color_11 = s:yellow[0]

  let g:terminal_color_4 = s:gb.neutral_blue[0]
  let g:terminal_color_12 = s:blue[0]

  let g:terminal_color_5 = s:gb.neutral_purple[0]
  let g:terminal_color_13 = s:purple[0]

  let g:terminal_color_6 = s:gb.neutral_aqua[0]
  let g:terminal_color_14 = s:aqua[0]

  let g:terminal_color_7 = s:fg4[0]
  let g:terminal_color_15 = s:fg1[0]
endif

" Overload Setting:

let s:hls_cursor = s:orange
if exists('g:theme_hls_cursor')
  let s:hls_cursor = get(s:gb, g:theme_hls_cursor)
endif

let s:number_column = s:none
if exists('g:theme_number_column')
  let s:number_column = get(s:gb, g:theme_number_column)
endif

let s:sign_column = s:bg0

if exists('g:gitgutter_override_sign_column_highlight') &&
      \ g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0

  if exists('g:theme_sign_column')
    let s:sign_column = get(s:gb, g:theme_sign_column)
  endif
endif

let s:color_column = s:bg1
if exists('g:theme_color_column')
  let s:color_column = get(s:gb, g:theme_color_column)
endif

let s:vert_split = s:bg0
if exists('g:theme_vert_split')
  let s:vert_split = get(s:gb, g:theme_vert_split)
endif

let s:invert_signs = ''
if exists('g:theme_invert_signs')
  if g:theme_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif

let s:invert_selection = s:inverse
if exists('g:theme_invert_selection')
  if g:theme_invert_selection == 0
    let s:invert_selection = ''
  endif
endif

let s:invert_tabline = ''
if exists('g:theme_invert_tabline')
  if g:theme_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif

let s:italicize_comments = s:italic
if exists('g:theme_italicize_comments')
  if g:theme_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif

let s:italicize_strings = ''
if exists('g:theme_italicize_strings')
  if g:theme_italicize_strings == 1
    let s:italicize_strings = s:italic
  endif
endif

" Highlighting Function:

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " Foreground
  let fg = a:fg

  " Background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " Emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  " Special fallback
  if a:0 >= 3
    if g:theme_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert highlighting
    if g:theme_guisp_fallback == 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " Special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

" theme Hi Groups:

" Memoize common hi groups
call s:HL('themeFg0', s:fg0)
call s:HL('themeFg1', s:fg1)
call s:HL('themeFg2', s:fg2)
call s:HL('themeFg3', s:fg3)
call s:HL('themeFg4', s:fg4)
call s:HL('themeGray', s:gray)
call s:HL('themeBg0', s:bg0)
call s:HL('themeBg1', s:bg1)
call s:HL('themeBg2', s:bg2)
call s:HL('themeBg3', s:bg3)
call s:HL('themeBg4', s:bg4)

call s:HL('themeRed', s:red)
call s:HL('themeRedBold', s:red, s:none, s:bold)
call s:HL('themeGreen', s:green)
call s:HL('themeGreenBold', s:green, s:none, s:bold)
call s:HL('themeYellow', s:yellow)
call s:HL('themeYellowBold', s:yellow, s:none, s:bold)
call s:HL('themeBlue', s:blue)
call s:HL('themeBlueBold', s:blue, s:none, s:bold)
call s:HL('themePurple', s:purple)
call s:HL('themePurpleBold', s:purple, s:none, s:bold)
call s:HL('themeAqua', s:aqua)
call s:HL('themeAquaBold', s:aqua, s:none, s:bold)
call s:HL('themeOrange', s:orange)
call s:HL('themeOrangeBold', s:orange, s:none, s:bold)

call s:HL('themeRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('themeGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('themeYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('themeBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('themePurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:HL('themeAquaSign', s:aqua, s:sign_column, s:invert_signs)
call s:HL('themeOrangeSign', s:orange, s:sign_column, s:invert_signs)


" Vanilla colorscheme ---------------------------------------------------------
" General UI:

" Normal text
call s:HL('Normal', s:fg1, s:bg0)

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bg1)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  " Tab pages line filler
  call s:HL('TabLineFill', s:bg4, s:bg0, s:invert_tabline)
  " Active tab page label
  call s:HL('TabLineSel', s:green, s:bg0, s:invert_tabline)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:none, s:bg3, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:color_column)

  " Concealed element: \lambda ? ?
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, s:bg1)
endif

hi! link NonText themeBg2
hi! link SpecialKey themeBg2

call s:HL('Visual',    s:none,  s:bg1)
hi! link VisualNOS Visual

call s:HL('Search',    s:yellow, s:bg0, s:inverse)
call s:HL('IncSearch', s:hls_cursor, s:bg0, s:inverse)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bg2, s:fg1, s:inverse)
call s:HL('StatusLineNC', s:bg1, s:fg4, s:inverse)

" The column separating vertically split windows
call s:HL('VertSplit', s:bg3, s:vert_split)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:bg2, s:bold)

" Directory names, special names in listing
hi! link Directory themeGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title themeGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:bg0, s:red, s:bold)
" More prompt: -- More --
hi! link MoreMsg themeYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg themeBg4
" 'Press enter' prompt and yes/no questions
hi! link Question themeOrangeBold
" Warning messages
hi! link WarningMsg themeRedBold

" Gutter:

" Line number for :number and :# commands
call s:HL('LineNr', s:bg4, s:number_column)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:bg1, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:bg1)

" Cursor:

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" Syntax Highlighting:

if g:theme_improved_strings == 0
  hi! link Special themeOrange
else
  call s:HL('Special', s:orange, s:bg1, s:italicize_strings)
endif

call s:HL('Comment', s:gray, s:none, s:italicize_comments)
call s:HL('Todo', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('Error', s:red, s:vim_bg, s:bold . s:inverse)

" Generic statement
hi! link Statement themeRed
" if, then, else, endif, swicth, etc.
hi! link Conditional themeRed
" for, do, while, etc.
hi! link Repeat themeRed
" case, default, etc.
hi! link Label themeRed
" try, catch, throw
hi! link Exception themeRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword themeRed

" Variable name
hi! link Identifier themeBlue
" Function name
hi! link Function themeGreenBold

" Generic preprocessor
hi! link PreProc themeAqua
" Preprocessor #include
hi! link Include themeAqua
" Preprocessor #define
hi! link Define themeAqua
" Same as Define
hi! link Macro themeAqua
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit themeAqua

" Generic constant
hi! link Constant themePurple
" Character constant: 'c', '/n'
hi! link Character themePurple
" String constant: "this is a string"
if g:theme_improved_strings == 0
  call s:HL('String',  s:green, s:none, s:italicize_strings)
else
  call s:HL('String',  s:fg1, s:bg1, s:italicize_strings)
endif
" Boolean constant: TRUE, false
hi! link Boolean themePurple
" Number constant: 234, 0xff
hi! link Number themePurple
" Floating point constant: 2.3e10
hi! link Float themePurple

" Generic type
hi! link Type themeYellow
" static, register, volatile, etc
hi! link StorageClass themeOrange
" struct, union, enum, etc.
hi! link Structure themeAqua
" typedef
hi! link Typedef themeYellow

" Completion Menu:

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:fg1, s:bg2)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:fg1, s:green, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:bg2)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:bg4)
endif

" Diffs:

call s:HL('DiffDelete', s:red, s:bg0, s:inverse)
call s:HL('DiffAdd',    s:green, s:bg0, s:inverse)
"call s:HL('DiffChange', s:bg0, s:blue)
"call s:HL('DiffText',   s:bg0, s:yellow)

" Alternative setting.
call s:HL('DiffChange', s:aqua, s:bg0, s:inverse)
call s:HL('DiffText',   s:yellow, s:bg0, s:inverse)

" Spelling:

if has("spell")
  " Not capitalised word, or compile warnings
  if g:theme_improved_warnings == 0
    call s:HL('SpellCap',   s:none, s:none, s:undercurl, s:red)
  else
    call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  endif
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:aqua)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:purple)
endif

" Plugin specific -------------------------------------------------------------

" EasyMotion:

hi! link EasyMotionTarget Search
hi! link EasyMotionShade Comment

" Sneak:

hi! link Sneak Search
hi! link SneakLabel Search

" Indent Guides:

if !exists('g:indent_guides_auto_colors')
  let g:indent_guides_auto_colors = 0
endif

if g:indent_guides_auto_colors == 0
  if g:theme_invert_indent_guides == 0
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg1)
  else
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2, s:inverse)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg3, s:inverse)
  endif
endif

" IndentLine:

if !exists('g:indentLine_color_term')
  let g:indentLine_color_term = s:bg2[1]
endif
if !exists('g:indentLine_color_gui')
  let g:indentLine_color_gui = s:bg2[0]
endif

" Rainbow Parentheses:

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', '#458588'], ['magenta', '#b16286'],
      \ ['red',  '#cc241d'], ['166',     '#d65d0e']
    \ ]
endif

let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

" GitGutter:

hi! link GitGutterAdd themeGreenSign
hi! link GitGutterChange themeAquaSign
hi! link GitGutterDelete themeRedSign
hi! link GitGutterChangeDelete themeAquaSign

" GitCommit:

hi! link gitcommitSelectedFile themeGreen
hi! link gitcommitDiscardedFile themeRed

" Signify:

hi! link SignifySignAdd themeGreenSign
hi! link SignifySignChange themeAquaSign
hi! link SignifySignDelete themeRedSign

" Syntastic:

call s:HL('SyntasticError', s:none, s:none, s:undercurl, s:red)
call s:HL('SyntasticWarning', s:none, s:none, s:undercurl, s:yellow)

hi! link SyntasticErrorSign themeRedSign
hi! link SyntasticWarningSign themeYellowSign

" Signature:

hi! link SignatureMarkText   themeBlueSign
hi! link SignatureMarkerText themePurpleSign

" ShowMarks:

hi! link ShowMarksHLl themeBlueSign
hi! link ShowMarksHLu themeBlueSign
hi! link ShowMarksHLo themeBlueSign
hi! link ShowMarksHLm themeBlueSign

" CtrlP:

hi! link CtrlPMatch themeYellow
hi! link CtrlPNoEntries themeRed
hi! link CtrlPPrtBase themeBg2
hi! link CtrlPPrtCursor themeBlue
hi! link CtrlPLinePre themeBg2

call s:HL('CtrlPMode1', s:blue, s:bg2, s:bold)
call s:HL('CtrlPMode2', s:bg0, s:blue, s:bold)
call s:HL('CtrlPStats', s:fg4, s:bg2, s:bold)

" Startify:

hi! link StartifyBracket themeFg3
hi! link StartifyFile themeFg1
hi! link StartifyNumber themeBlue
hi! link StartifyPath themeGray
hi! link StartifySlash themeGray
hi! link StartifySection themeYellow
hi! link StartifySpecial themeBg2
hi! link StartifyHeader themeOrange
hi! link StartifyFooter themeBg2

" Vimshell:

let g:vimshell_escape_colors = [
  \ s:bg4[0], s:red[0], s:green[0], s:yellow[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg4[0],
  \ s:bg0[0], s:red[0], s:green[0], s:orange[0],
  \ s:blue[0], s:purple[0], s:aqua[0], s:fg0[0]
  \ ]

" BufTabLine:

call s:HL('BufTabLineCurrent', s:bg0, s:fg4)
call s:HL('BufTabLineActive', s:fg4, s:bg2)
call s:HL('BufTabLineHidden', s:bg4, s:bg1)
call s:HL('BufTabLineFill', s:bg0, s:bg0)

" Asynchronous Lint Engine:

call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)

hi! link ALEErrorSign themeRedSign
hi! link ALEWarningSign themeYellowSign
hi! link ALEInfoSign themeBlueSign

" Dirvish:

hi! link DirvishPathTail themeAqua
hi! link DirvishArg themeYellow

" Netrw:

hi! link netrwDir themeGreen
hi! link netrwClassify themeGreen
hi! link netrwLink themeGray
hi! link netrwSymLink themeFg1
hi! link netrwExe themeYellow
hi! link netrwComment themeGray
hi! link netrwList themeBlue
hi! link netrwHelpCmd themeAqua
hi! link netrwCmdSep themeFg3
hi! link netrwVersion themeGreen

" NERDTree:

hi! link NERDTreeDir themeAqua
hi! link NERDTreeDirSlash themeAqua

hi! link NERDTreeOpenable themeOrange
hi! link NERDTreeClosable themeOrange

hi! link NERDTreeFile themeFg1
hi! link NERDTreeExecFile themeYellow

hi! link NERDTreeUp themeGray
hi! link NERDTreeCWD themeGreen
hi! link NERDTreeHelp themeFg1

hi! link NERDTreeToggleOn themeGreen
hi! link NERDTreeToggleOff themeRed

" Vim Multiple Cursors:

call s:HL('multiple_cursors_cursor', s:none, s:none, s:inverse)
call s:HL('multiple_cursors_visual', s:none, s:bg2)

" coc.nvim:

hi! link CocErrorSign themeRedSign
hi! link CocWarningSign themeOrangeSign
hi! link CocInfoSign themeYellowSign
hi! link CocHintSign themeBlueSign
hi! link CocErrorFloat themeRed
hi! link CocWarningFloat themeOrange
hi! link CocInfoFloat themeYellow
hi! link CocHintFloat themeBlue
hi! link CocDiagnosticsError themeRed
hi! link CocDiagnosticsWarning themeOrange
hi! link CocDiagnosticsInfo themeYellow
hi! link CocDiagnosticsHint themeBlue

hi! link CocSelectedText themeRed
hi! link CocCodeLens themeGray

call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:orange)
call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)

" Filetype specific -----------------------------------------------------------
" Diff:

hi! link diffAdded themeGreen
hi! link diffRemoved themeRed
hi! link diffChanged themeAqua

hi! link diffFile themeOrange
hi! link diffNewFile themeYellow

hi! link diffLine themeBlue

" Html:

hi! link htmlTag themeRed
hi! link htmlEndTag themeRed

hi! link htmlTagName themePurpleBold
hi! link htmlArg themeYellow

hi! link htmlScriptTag themePurple
hi! link htmlTagN themeFg1
hi! link htmlSpecialTagName themeAquaBold

call s:HL('htmlLink', s:fg4, s:none, s:underline)

hi! link htmlSpecialChar themeOrange

call s:HL('htmlBold', s:vim_fg, s:vim_bg, s:bold)
call s:HL('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

" Xml:

hi! link xmlTag themeBlue
hi! link xmlEndTag themeBlue
hi! link xmlTagName themeBlue
hi! link xmlEqual themeBlue
hi! link docbkKeyword themeAquaBold

hi! link xmlDocTypeDecl themeGray
hi! link xmlDocTypeKeyword themePurple
hi! link xmlCdataStart themeGray
hi! link xmlCdataCdata themePurple
hi! link dtdFunction themeGray
hi! link dtdTagName themePurple

hi! link xmlAttrib themeAqua
hi! link xmlProcessingDelim themeGray
hi! link dtdParamEntityPunct themeGray
hi! link dtdParamEntityDPunct themeGray
hi! link xmlAttribPunct themeGray

hi! link xmlEntity themeOrange
hi! link xmlEntityPunct themeOrange

" Vim:

call s:HL('vimCommentTitle', s:fg4_256, s:none, s:bold . s:italicize_comments)

hi! link vimNotation themeOrange
hi! link vimBracket themeOrange
hi! link vimMapModKey themeOrange
hi! link vimFuncSID themeFg3
hi! link vimSetSep themeFg3
hi! link vimSep themeFg3
hi! link vimContinue themeFg3

" Clojure:

hi! link clojureKeyword themeBlue
hi! link clojureCond themeOrange
hi! link clojureSpecial themeOrange
hi! link clojureDefine themeOrange

hi! link clojureFunc themeYellow
hi! link clojureRepeat themeYellow
hi! link clojureCharacter themeAqua
hi! link clojureStringEscape themeAqua
hi! link clojureException themeRed

hi! link clojureRegexp themeAqua
hi! link clojureRegexpEscape themeAqua
call s:HL('clojureRegexpCharClass', s:fg3, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen themeFg3
hi! link clojureAnonArg themeYellow
hi! link clojureVariable themeBlue
hi! link clojureMacro themeOrange

hi! link clojureMeta themeYellow
hi! link clojureDeref themeYellow
hi! link clojureQuote themeYellow
hi! link clojureUnquote themeYellow

" C:

hi! link cOperator themePurple
hi! link cStructure themeOrange

" Python:

hi! link pythonBuiltin themeOrange
hi! link pythonBuiltinObj themeOrange
hi! link pythonBuiltinFunc themeOrange
hi! link pythonFunction themeAqua
hi! link pythonDecorator themeRed
hi! link pythonInclude themeBlue
hi! link pythonImport themeBlue
hi! link pythonRun themeBlue
hi! link pythonCoding themeBlue
hi! link pythonOperator themeRed
hi! link pythonException themeRed
hi! link pythonExceptions themePurple
hi! link pythonBoolean themePurple
hi! link pythonDot themeFg3
hi! link pythonConditional themeRed
hi! link pythonRepeat themeRed
hi! link pythonDottedName themeGreenBold

" CSS:

hi! link cssBraces themeBlue
hi! link cssFunctionName themeYellow
hi! link cssIdentifier themeOrange
hi! link cssClassName themeGreen
hi! link cssColor themeBlue
hi! link cssSelectorOp themeBlue
hi! link cssSelectorOp2 themeBlue
hi! link cssImportant themeGreen
hi! link cssVendor themeFg1

hi! link cssTextProp themeAqua
hi! link cssAnimationProp themeAqua
hi! link cssUIProp themeYellow
hi! link cssTransformProp themeAqua
hi! link cssTransitionProp themeAqua
hi! link cssPrintProp themeAqua
hi! link cssPositioningProp themeYellow
hi! link cssBoxProp themeAqua
hi! link cssFontDescriptorProp themeAqua
hi! link cssFlexibleBoxProp themeAqua
hi! link cssBorderOutlineProp themeAqua
hi! link cssBackgroundProp themeAqua
hi! link cssMarginProp themeAqua
hi! link cssListProp themeAqua
hi! link cssTableProp themeAqua
hi! link cssFontProp themeAqua
hi! link cssPaddingProp themeAqua
hi! link cssDimensionProp themeAqua
hi! link cssRenderProp themeAqua
hi! link cssColorProp themeAqua
hi! link cssGeneratedContentProp themeAqua

" JavaScript:

hi! link javaScriptBraces themeFg1
hi! link javaScriptFunction themeAqua
hi! link javaScriptIdentifier themeRed
hi! link javaScriptMember themeBlue
hi! link javaScriptNumber themePurple
hi! link javaScriptNull themePurple
hi! link javaScriptParens themeFg3

" YAJS:

hi! link javascriptImport themeAqua
hi! link javascriptExport themeAqua
hi! link javascriptClassKeyword themeAqua
hi! link javascriptClassExtends themeAqua
hi! link javascriptDefault themeAqua

hi! link javascriptClassName themeYellow
hi! link javascriptClassSuperName themeYellow
hi! link javascriptGlobal themeYellow

hi! link javascriptEndColons themeFg1
hi! link javascriptFuncArg themeFg1
hi! link javascriptGlobalMethod themeFg1
hi! link javascriptNodeGlobal themeFg1
hi! link javascriptBOMWindowProp themeFg1
hi! link javascriptArrayMethod themeFg1
hi! link javascriptArrayStaticMethod themeFg1
hi! link javascriptCacheMethod themeFg1
hi! link javascriptDateMethod themeFg1
hi! link javascriptMathStaticMethod themeFg1

" hi! link javascriptProp themeFg1
hi! link javascriptURLUtilsProp themeFg1
hi! link javascriptBOMNavigatorProp themeFg1
hi! link javascriptDOMDocMethod themeFg1
hi! link javascriptDOMDocProp themeFg1
hi! link javascriptBOMLocationMethod themeFg1
hi! link javascriptBOMWindowMethod themeFg1
hi! link javascriptStringMethod themeFg1

hi! link javascriptVariable themeOrange
" hi! link javascriptVariable themeRed
" hi! link javascriptIdentifier themeOrange
" hi! link javascriptClassSuper themeOrange
hi! link javascriptIdentifier themeOrange
hi! link javascriptClassSuper themeOrange

" hi! link javascriptFuncKeyword themeOrange
" hi! link javascriptAsyncFunc themeOrange
hi! link javascriptFuncKeyword themeAqua
hi! link javascriptAsyncFunc themeAqua
hi! link javascriptClassStatic themeOrange

hi! link javascriptOperator themeRed
hi! link javascriptForOperator themeRed
hi! link javascriptYield themeRed
hi! link javascriptExceptions themeRed
hi! link javascriptMessage themeRed

hi! link javascriptTemplateSB themeAqua
hi! link javascriptTemplateSubstitution themeFg1

" hi! link javascriptLabel themeBlue
" hi! link javascriptObjectLabel themeBlue
" hi! link javascriptPropertyName themeBlue
hi! link javascriptLabel themeFg1
hi! link javascriptObjectLabel themeFg1
hi! link javascriptPropertyName themeFg1

hi! link javascriptLogicSymbols themeFg1
hi! link javascriptArrowFunc themeYellow

hi! link javascriptDocParamName themeFg4
hi! link javascriptDocTags themeFg4
hi! link javascriptDocNotation themeFg4
hi! link javascriptDocParamType themeFg4
hi! link javascriptDocNamedParamType themeFg4

hi! link javascriptBrackets themeFg1
hi! link javascriptDOMElemAttrs themeFg1
hi! link javascriptDOMEventMethod themeFg1
hi! link javascriptDOMNodeMethod themeFg1
hi! link javascriptDOMStorageMethod themeFg1
hi! link javascriptHeadersMethod themeFg1

hi! link javascriptAsyncFuncKeyword themeRed
hi! link javascriptAwaitFuncKeyword themeRed

" PanglossJS:

hi! link jsClassKeyword themeAqua
hi! link jsExtendsKeyword themeAqua
hi! link jsExportDefault themeAqua
hi! link jsTemplateBraces themeAqua
hi! link jsGlobalNodeObjects themeFg1
hi! link jsGlobalObjects themeFg1
hi! link jsFunction themeAqua
hi! link jsFuncParens themeFg3
hi! link jsParens themeFg3
hi! link jsNull themePurple
hi! link jsUndefined themePurple
hi! link jsClassDefinition themeYellow

" TypeScript:

hi! link typeScriptReserved themeAqua
hi! link typeScriptLabel themeAqua
hi! link typeScriptFuncKeyword themeAqua
hi! link typeScriptIdentifier themeOrange
hi! link typeScriptBraces themeFg1
hi! link typeScriptEndColons themeFg1
hi! link typeScriptDOMObjects themeFg1
hi! link typeScriptAjaxMethods themeFg1
hi! link typeScriptLogicSymbols themeFg1
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects themeFg1
hi! link typeScriptParens themeFg3
hi! link typeScriptOpSymbols themeFg3
hi! link typeScriptHtmlElemProperties themeFg1
hi! link typeScriptNull themePurple
hi! link typeScriptInterpolationDelimiter themeAqua

" PureScript:

hi! link purescriptModuleKeyword themeAqua
hi! link purescriptModuleName themeFg1
hi! link purescriptWhere themeAqua
hi! link purescriptDelimiter themeFg4
hi! link purescriptType themeFg1
hi! link purescriptImportKeyword themeAqua
hi! link purescriptHidingKeyword themeAqua
hi! link purescriptAsKeyword themeAqua
hi! link purescriptStructure themeAqua
hi! link purescriptOperator themeBlue

hi! link purescriptTypeVar themeFg1
hi! link purescriptConstructor themeFg1
hi! link purescriptFunction themeFg1
hi! link purescriptConditional themeOrange
hi! link purescriptBacktick themeOrange

" CoffeeScript:

hi! link coffeeExtendedOp themeFg3
hi! link coffeeSpecialOp themeFg3
hi! link coffeeCurly themeOrange
hi! link coffeeParen themeFg3
hi! link coffeeBracket themeOrange

" Ruby:

hi! link rubyStringDelimiter themeGreen
hi! link rubyInterpolationDelimiter themeAqua

" ObjectiveC:

hi! link objcTypeModifier themeRed
hi! link objcDirective themeBlue

" Go:

hi! link goDirective themeAqua
hi! link goConstants themePurple
hi! link goDeclaration themeRed
hi! link goDeclType themeBlue
hi! link goBuiltins themeOrange

" Lua:

hi! link luaIn themeRed
hi! link luaFunction themeAqua
hi! link luaTable themeOrange

" MoonScript:

hi! link moonSpecialOp themeFg3
hi! link moonExtendedOp themeFg3
hi! link moonFunction themeFg3
hi! link moonObject themeYellow

" Java:

hi! link javaAnnotation themeBlue
hi! link javaDocTags themeAqua
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen themeFg3
hi! link javaParen1 themeFg3
hi! link javaParen2 themeFg3
hi! link javaParen3 themeFg3
hi! link javaParen4 themeFg3
hi! link javaParen5 themeFg3
hi! link javaOperator themeOrange

hi! link javaVarArg themeGreen

" Elixir:

hi! link elixirDocString Comment

hi! link elixirStringDelimiter themeGreen
hi! link elixirInterpolationDelimiter themeAqua

hi! link elixirModuleDeclaration themeYellow

" Scala:

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition themeFg1
hi! link scalaCaseFollowing themeFg1
hi! link scalaCapitalWord themeFg1
hi! link scalaTypeExtension themeFg1

hi! link scalaKeyword themeRed
hi! link scalaKeywordModifier themeRed

hi! link scalaSpecial themeAqua
hi! link scalaOperator themeFg1

hi! link scalaTypeDeclaration themeYellow
hi! link scalaTypeTypePostDeclaration themeYellow

hi! link scalaInstanceDeclaration themeFg1
hi! link scalaInterpolation themeAqua

" Markdown:

call s:HL('markdownItalic', s:fg3, s:none, s:italic)

hi! link markdownH1 themeGreenBold
hi! link markdownH2 themeGreenBold
hi! link markdownH3 themeYellowBold
hi! link markdownH4 themeYellowBold
hi! link markdownH5 themeYellow
hi! link markdownH6 themeYellow

hi! link markdownCode themeAqua
hi! link markdownCodeBlock themeAqua
hi! link markdownCodeDelimiter themeAqua

hi! link markdownBlockquote themeGray
hi! link markdownListMarker themeGray
hi! link markdownOrderedListMarker themeGray
hi! link markdownRule themeGray
hi! link markdownHeadingRule themeGray

hi! link markdownUrlDelimiter themeFg3
hi! link markdownLinkDelimiter themeFg3
hi! link markdownLinkTextDelimiter themeFg3

hi! link markdownHeadingDelimiter themeOrange
hi! link markdownUrl themePurple
hi! link markdownUrlTitleDelimiter themeGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" Haskell:

" hi! link haskellType themeYellow
" hi! link haskellOperators themeOrange
" hi! link haskellConditional themeAqua
" hi! link haskellLet themeOrange
"
hi! link haskellType themeFg1
hi! link haskellIdentifier themeFg1
hi! link haskellSeparator themeFg1
hi! link haskellDelimiter themeFg4
hi! link haskellOperators themeBlue
"
hi! link haskellBacktick themeOrange
hi! link haskellStatement themeOrange
hi! link haskellConditional themeOrange

hi! link haskellLet themeAqua
hi! link haskellDefault themeAqua
hi! link haskellWhere themeAqua
hi! link haskellBottom themeAqua
hi! link haskellBlockKeywords themeAqua
hi! link haskellImportKeywords themeAqua
hi! link haskellDeclKeyword themeAqua
hi! link haskellDeriving themeAqua
hi! link haskellAssocType themeAqua

hi! link haskellNumber themePurple
hi! link haskellPragma themePurple

hi! link haskellString themeGreen
hi! link haskellChar themeGreen

" Json:

hi! link jsonKeyword themeGreen
hi! link jsonQuote themeGreen
hi! link jsonBraces themeFg1
hi! link jsonString themeFg1
