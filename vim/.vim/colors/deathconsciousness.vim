if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='deathconsciousness'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Global Settings:

if !exists('g:deathconsciousness_bold')
  let g:deathconsciousness_bold=1
endif
if !exists('g:deathconsciousness_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:deathconsciousness_italic=1
  else
    let g:deathconsciousness_italic=0
  endif
endif
if !exists('g:deathconsciousness_undercurl')
  let g:deathconsciousness_undercurl=1
endif
if !exists('g:deathconsciousness_underline')
  let g:deathconsciousness_underline=1
endif
if !exists('g:deathconsciousness_inverse')
  let g:deathconsciousness_inverse=1
endif

if !exists('g:deathconsciousness_guisp_fallback') || index(['fg', 'bg'], g:deathconsciousness_guisp_fallback) == -1
  let g:deathconsciousness_guisp_fallback='NONE'
endif

if !exists('g:deathconsciousness_improved_strings')
  let g:deathconsciousness_improved_strings=0
endif

if !exists('g:deathconsciousness_improved_warnings')
  let g:deathconsciousness_improved_warnings=0
endif

if !exists('g:deathconsciousness_termcolors')
  let g:deathconsciousness_termcolors=256
endif

if !exists('g:deathconsciousness_invert_indent_guides')
  let g:deathconsciousness_invert_indent_guides=0
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
if g:deathconsciousness_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:deathconsciousness_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:deathconsciousness_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:deathconsciousness_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:deathconsciousness_inverse == 0
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
if g:deathconsciousness_termcolors == 16
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
if exists('g:deathconsciousness_hls_cursor')
  let s:hls_cursor = get(s:gb, g:deathconsciousness_hls_cursor)
endif

let s:number_column = s:none
if exists('g:deathconsciousness_number_column')
  let s:number_column = get(s:gb, g:deathconsciousness_number_column)
endif

let s:sign_column = s:bg0

if exists('g:gitgutter_override_sign_column_highlight') &&
      \ g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0

  if exists('g:deathconsciousness_sign_column')
    let s:sign_column = get(s:gb, g:deathconsciousness_sign_column)
  endif
endif

let s:color_column = s:bg1
if exists('g:deathconsciousness_color_column')
  let s:color_column = get(s:gb, g:deathconsciousness_color_column)
endif

let s:vert_split = s:bg0
if exists('g:deathconsciousness_vert_split')
  let s:vert_split = get(s:gb, g:deathconsciousness_vert_split)
endif

let s:invert_signs = ''
if exists('g:deathconsciousness_invert_signs')
  if g:deathconsciousness_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif

let s:invert_selection = s:inverse
if exists('g:deathconsciousness_invert_selection')
  if g:deathconsciousness_invert_selection == 0
    let s:invert_selection = ''
  endif
endif

let s:invert_tabline = ''
if exists('g:deathconsciousness_invert_tabline')
  if g:deathconsciousness_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif

let s:italicize_comments = s:italic
if exists('g:deathconsciousness_italicize_comments')
  if g:deathconsciousness_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif

let s:italicize_strings = ''
if exists('g:deathconsciousness_italicize_strings')
  if g:deathconsciousness_italicize_strings == 1
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
    if g:deathconsciousness_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert highlighting
    if g:deathconsciousness_guisp_fallback == 'bg'
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

" Deathconsciousness Hi Groups:

" Memoize common hi groups
call s:HL('DeathconsciousnessFg0', s:fg0)
call s:HL('DeathconsciousnessFg1', s:fg1)
call s:HL('DeathconsciousnessFg2', s:fg2)
call s:HL('DeathconsciousnessFg3', s:fg3)
call s:HL('DeathconsciousnessFg4', s:fg4)
call s:HL('DeathconsciousnessGray', s:gray)
call s:HL('DeathconsciousnessBg0', s:bg0)
call s:HL('DeathconsciousnessBg1', s:bg1)
call s:HL('DeathconsciousnessBg2', s:bg2)
call s:HL('DeathconsciousnessBg3', s:bg3)
call s:HL('DeathconsciousnessBg4', s:bg4)

call s:HL('DeathconsciousnessRed', s:red)
call s:HL('DeathconsciousnessRedBold', s:red, s:none, s:bold)
call s:HL('DeathconsciousnessGreen', s:green)
call s:HL('DeathconsciousnessGreenBold', s:green, s:none, s:bold)
call s:HL('DeathconsciousnessYellow', s:yellow)
call s:HL('DeathconsciousnessYellowBold', s:yellow, s:none, s:bold)
call s:HL('DeathconsciousnessBlue', s:blue)
call s:HL('DeathconsciousnessBlueBold', s:blue, s:none, s:bold)
call s:HL('DeathconsciousnessPurple', s:purple)
call s:HL('DeathconsciousnessPurpleBold', s:purple, s:none, s:bold)
call s:HL('DeathconsciousnessAqua', s:aqua)
call s:HL('DeathconsciousnessAquaBold', s:aqua, s:none, s:bold)
call s:HL('DeathconsciousnessOrange', s:orange)
call s:HL('DeathconsciousnessOrangeBold', s:orange, s:none, s:bold)

call s:HL('DeathconsciousnessRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('DeathconsciousnessGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('DeathconsciousnessYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('DeathconsciousnessBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('DeathconsciousnessPurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:HL('DeathconsciousnessAquaSign', s:aqua, s:sign_column, s:invert_signs)
call s:HL('DeathconsciousnessOrangeSign', s:orange, s:sign_column, s:invert_signs)


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

hi! link NonText DeathconsciousnessBg2
hi! link SpecialKey DeathconsciousnessBg2

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
hi! link Directory DeathconsciousnessGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title DeathconsciousnessGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:bg0, s:red, s:bold)
" More prompt: -- More --
hi! link MoreMsg DeathconsciousnessYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg DeathconsciousnessBg4
" 'Press enter' prompt and yes/no questions
hi! link Question DeathconsciousnessOrangeBold
" Warning messages
hi! link WarningMsg DeathconsciousnessRedBold

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

if g:deathconsciousness_improved_strings == 0
  hi! link Special DeathconsciousnessOrange
else
  call s:HL('Special', s:orange, s:bg1, s:italicize_strings)
endif

call s:HL('Comment', s:gray, s:none, s:italicize_comments)
call s:HL('Todo', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('Error', s:red, s:vim_bg, s:bold . s:inverse)

" Generic statement
hi! link Statement DeathconsciousnessRed
" if, then, else, endif, swicth, etc.
hi! link Conditional DeathconsciousnessRed
" for, do, while, etc.
hi! link Repeat DeathconsciousnessRed
" case, default, etc.
hi! link Label DeathconsciousnessRed
" try, catch, throw
hi! link Exception DeathconsciousnessRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword DeathconsciousnessRed

" Variable name
hi! link Identifier DeathconsciousnessBlue
" Function name
hi! link Function DeathconsciousnessGreenBold

" Generic preprocessor
hi! link PreProc DeathconsciousnessAqua
" Preprocessor #include
hi! link Include DeathconsciousnessAqua
" Preprocessor #define
hi! link Define DeathconsciousnessAqua
" Same as Define
hi! link Macro DeathconsciousnessAqua
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit DeathconsciousnessAqua

" Generic constant
hi! link Constant DeathconsciousnessPurple
" Character constant: 'c', '/n'
hi! link Character DeathconsciousnessPurple
" String constant: "this is a string"
if g:deathconsciousness_improved_strings == 0
  call s:HL('String',  s:green, s:none, s:italicize_strings)
else
  call s:HL('String',  s:fg1, s:bg1, s:italicize_strings)
endif
" Boolean constant: TRUE, false
hi! link Boolean DeathconsciousnessPurple
" Number constant: 234, 0xff
hi! link Number DeathconsciousnessPurple
" Floating point constant: 2.3e10
hi! link Float DeathconsciousnessPurple

" Generic type
hi! link Type DeathconsciousnessYellow
" static, register, volatile, etc
hi! link StorageClass DeathconsciousnessOrange
" struct, union, enum, etc.
hi! link Structure DeathconsciousnessAqua
" typedef
hi! link Typedef DeathconsciousnessYellow

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
  if g:deathconsciousness_improved_warnings == 0
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
  if g:deathconsciousness_invert_indent_guides == 0
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

hi! link GitGutterAdd DeathconsciousnessGreenSign
hi! link GitGutterChange DeathconsciousnessAquaSign
hi! link GitGutterDelete DeathconsciousnessRedSign
hi! link GitGutterChangeDelete DeathconsciousnessAquaSign

" GitCommit:

hi! link gitcommitSelectedFile DeathconsciousnessGreen
hi! link gitcommitDiscardedFile DeathconsciousnessRed

" Signify:

hi! link SignifySignAdd DeathconsciousnessGreenSign
hi! link SignifySignChange DeathconsciousnessAquaSign
hi! link SignifySignDelete DeathconsciousnessRedSign

" Syntastic:

call s:HL('SyntasticError', s:none, s:none, s:undercurl, s:red)
call s:HL('SyntasticWarning', s:none, s:none, s:undercurl, s:yellow)

hi! link SyntasticErrorSign DeathconsciousnessRedSign
hi! link SyntasticWarningSign DeathconsciousnessYellowSign

" Signature:

hi! link SignatureMarkText   DeathconsciousnessBlueSign
hi! link SignatureMarkerText DeathconsciousnessPurpleSign

" ShowMarks:

hi! link ShowMarksHLl DeathconsciousnessBlueSign
hi! link ShowMarksHLu DeathconsciousnessBlueSign
hi! link ShowMarksHLo DeathconsciousnessBlueSign
hi! link ShowMarksHLm DeathconsciousnessBlueSign

" CtrlP:

hi! link CtrlPMatch DeathconsciousnessYellow
hi! link CtrlPNoEntries DeathconsciousnessRed
hi! link CtrlPPrtBase DeathconsciousnessBg2
hi! link CtrlPPrtCursor DeathconsciousnessBlue
hi! link CtrlPLinePre DeathconsciousnessBg2

call s:HL('CtrlPMode1', s:blue, s:bg2, s:bold)
call s:HL('CtrlPMode2', s:bg0, s:blue, s:bold)
call s:HL('CtrlPStats', s:fg4, s:bg2, s:bold)

" Startify:

hi! link StartifyBracket DeathconsciousnessFg3
hi! link StartifyFile DeathconsciousnessFg1
hi! link StartifyNumber DeathconsciousnessBlue
hi! link StartifyPath DeathconsciousnessGray
hi! link StartifySlash DeathconsciousnessGray
hi! link StartifySection DeathconsciousnessYellow
hi! link StartifySpecial DeathconsciousnessBg2
hi! link StartifyHeader DeathconsciousnessOrange
hi! link StartifyFooter DeathconsciousnessBg2

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

hi! link ALEErrorSign DeathconsciousnessRedSign
hi! link ALEWarningSign DeathconsciousnessYellowSign
hi! link ALEInfoSign DeathconsciousnessBlueSign

" Dirvish:

hi! link DirvishPathTail DeathconsciousnessAqua
hi! link DirvishArg DeathconsciousnessYellow

" Netrw:

hi! link netrwDir DeathconsciousnessGreen
hi! link netrwClassify DeathconsciousnessGreen
hi! link netrwLink DeathconsciousnessGray
hi! link netrwSymLink DeathconsciousnessFg1
hi! link netrwExe DeathconsciousnessYellow
hi! link netrwComment DeathconsciousnessGray
hi! link netrwList DeathconsciousnessBlue
hi! link netrwHelpCmd DeathconsciousnessAqua
hi! link netrwCmdSep DeathconsciousnessFg3
hi! link netrwVersion DeathconsciousnessGreen

" NERDTree:

hi! link NERDTreeDir DeathconsciousnessAqua
hi! link NERDTreeDirSlash DeathconsciousnessAqua

hi! link NERDTreeOpenable DeathconsciousnessOrange
hi! link NERDTreeClosable DeathconsciousnessOrange

hi! link NERDTreeFile DeathconsciousnessFg1
hi! link NERDTreeExecFile DeathconsciousnessYellow

hi! link NERDTreeUp DeathconsciousnessGray
hi! link NERDTreeCWD DeathconsciousnessGreen
hi! link NERDTreeHelp DeathconsciousnessFg1

hi! link NERDTreeToggleOn DeathconsciousnessGreen
hi! link NERDTreeToggleOff DeathconsciousnessRed

" Vim Multiple Cursors:

call s:HL('multiple_cursors_cursor', s:none, s:none, s:inverse)
call s:HL('multiple_cursors_visual', s:none, s:bg2)

" coc.nvim:

hi! link CocErrorSign DeathconsciousnessRedSign
hi! link CocWarningSign DeathconsciousnessOrangeSign
hi! link CocInfoSign DeathconsciousnessYellowSign
hi! link CocHintSign DeathconsciousnessBlueSign
hi! link CocErrorFloat DeathconsciousnessRed
hi! link CocWarningFloat DeathconsciousnessOrange
hi! link CocInfoFloat DeathconsciousnessYellow
hi! link CocHintFloat DeathconsciousnessBlue
hi! link CocDiagnosticsError DeathconsciousnessRed
hi! link CocDiagnosticsWarning DeathconsciousnessOrange
hi! link CocDiagnosticsInfo DeathconsciousnessYellow
hi! link CocDiagnosticsHint DeathconsciousnessBlue

hi! link CocSelectedText DeathconsciousnessRed
hi! link CocCodeLens DeathconsciousnessGray

call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:orange)
call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)

" Filetype specific -----------------------------------------------------------
" Diff:

hi! link diffAdded DeathconsciousnessGreen
hi! link diffRemoved DeathconsciousnessRed
hi! link diffChanged DeathconsciousnessAqua

hi! link diffFile DeathconsciousnessOrange
hi! link diffNewFile DeathconsciousnessYellow

hi! link diffLine DeathconsciousnessBlue

" Html:

hi! link htmlTag DeathconsciousnessRed
hi! link htmlEndTag DeathconsciousnessRed

hi! link htmlTagName DeathconsciousnessPurpleBold
hi! link htmlArg DeathconsciousnessYellow

hi! link htmlScriptTag DeathconsciousnessPurple
hi! link htmlTagN DeathconsciousnessFg1
hi! link htmlSpecialTagName DeathconsciousnessAquaBold

call s:HL('htmlLink', s:fg4, s:none, s:underline)

hi! link htmlSpecialChar DeathconsciousnessOrange

call s:HL('htmlBold', s:vim_fg, s:vim_bg, s:bold)
call s:HL('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

" Xml:

hi! link xmlTag DeathconsciousnessBlue
hi! link xmlEndTag DeathconsciousnessBlue
hi! link xmlTagName DeathconsciousnessBlue
hi! link xmlEqual DeathconsciousnessBlue
hi! link docbkKeyword DeathconsciousnessAquaBold

hi! link xmlDocTypeDecl DeathconsciousnessGray
hi! link xmlDocTypeKeyword DeathconsciousnessPurple
hi! link xmlCdataStart DeathconsciousnessGray
hi! link xmlCdataCdata DeathconsciousnessPurple
hi! link dtdFunction DeathconsciousnessGray
hi! link dtdTagName DeathconsciousnessPurple

hi! link xmlAttrib DeathconsciousnessAqua
hi! link xmlProcessingDelim DeathconsciousnessGray
hi! link dtdParamEntityPunct DeathconsciousnessGray
hi! link dtdParamEntityDPunct DeathconsciousnessGray
hi! link xmlAttribPunct DeathconsciousnessGray

hi! link xmlEntity DeathconsciousnessOrange
hi! link xmlEntityPunct DeathconsciousnessOrange

" Vim:

call s:HL('vimCommentTitle', s:fg4_256, s:none, s:bold . s:italicize_comments)

hi! link vimNotation DeathconsciousnessOrange
hi! link vimBracket DeathconsciousnessOrange
hi! link vimMapModKey DeathconsciousnessOrange
hi! link vimFuncSID DeathconsciousnessFg3
hi! link vimSetSep DeathconsciousnessFg3
hi! link vimSep DeathconsciousnessFg3
hi! link vimContinue DeathconsciousnessFg3

" Clojure:

hi! link clojureKeyword DeathconsciousnessBlue
hi! link clojureCond DeathconsciousnessOrange
hi! link clojureSpecial DeathconsciousnessOrange
hi! link clojureDefine DeathconsciousnessOrange

hi! link clojureFunc DeathconsciousnessYellow
hi! link clojureRepeat DeathconsciousnessYellow
hi! link clojureCharacter DeathconsciousnessAqua
hi! link clojureStringEscape DeathconsciousnessAqua
hi! link clojureException DeathconsciousnessRed

hi! link clojureRegexp DeathconsciousnessAqua
hi! link clojureRegexpEscape DeathconsciousnessAqua
call s:HL('clojureRegexpCharClass', s:fg3, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen DeathconsciousnessFg3
hi! link clojureAnonArg DeathconsciousnessYellow
hi! link clojureVariable DeathconsciousnessBlue
hi! link clojureMacro DeathconsciousnessOrange

hi! link clojureMeta DeathconsciousnessYellow
hi! link clojureDeref DeathconsciousnessYellow
hi! link clojureQuote DeathconsciousnessYellow
hi! link clojureUnquote DeathconsciousnessYellow

" C:

hi! link cOperator DeathconsciousnessPurple
hi! link cStructure DeathconsciousnessOrange

" Python:

hi! link pythonBuiltin DeathconsciousnessOrange
hi! link pythonBuiltinObj DeathconsciousnessOrange
hi! link pythonBuiltinFunc DeathconsciousnessOrange
hi! link pythonFunction DeathconsciousnessAqua
hi! link pythonDecorator DeathconsciousnessRed
hi! link pythonInclude DeathconsciousnessBlue
hi! link pythonImport DeathconsciousnessBlue
hi! link pythonRun DeathconsciousnessBlue
hi! link pythonCoding DeathconsciousnessBlue
hi! link pythonOperator DeathconsciousnessRed
hi! link pythonException DeathconsciousnessRed
hi! link pythonExceptions DeathconsciousnessPurple
hi! link pythonBoolean DeathconsciousnessPurple
hi! link pythonDot DeathconsciousnessFg3
hi! link pythonConditional DeathconsciousnessRed
hi! link pythonRepeat DeathconsciousnessRed
hi! link pythonDottedName DeathconsciousnessGreenBold

" CSS:

hi! link cssBraces DeathconsciousnessBlue
hi! link cssFunctionName DeathconsciousnessYellow
hi! link cssIdentifier DeathconsciousnessOrange
hi! link cssClassName DeathconsciousnessGreen
hi! link cssColor DeathconsciousnessBlue
hi! link cssSelectorOp DeathconsciousnessBlue
hi! link cssSelectorOp2 DeathconsciousnessBlue
hi! link cssImportant DeathconsciousnessGreen
hi! link cssVendor DeathconsciousnessFg1

hi! link cssTextProp DeathconsciousnessAqua
hi! link cssAnimationProp DeathconsciousnessAqua
hi! link cssUIProp DeathconsciousnessYellow
hi! link cssTransformProp DeathconsciousnessAqua
hi! link cssTransitionProp DeathconsciousnessAqua
hi! link cssPrintProp DeathconsciousnessAqua
hi! link cssPositioningProp DeathconsciousnessYellow
hi! link cssBoxProp DeathconsciousnessAqua
hi! link cssFontDescriptorProp DeathconsciousnessAqua
hi! link cssFlexibleBoxProp DeathconsciousnessAqua
hi! link cssBorderOutlineProp DeathconsciousnessAqua
hi! link cssBackgroundProp DeathconsciousnessAqua
hi! link cssMarginProp DeathconsciousnessAqua
hi! link cssListProp DeathconsciousnessAqua
hi! link cssTableProp DeathconsciousnessAqua
hi! link cssFontProp DeathconsciousnessAqua
hi! link cssPaddingProp DeathconsciousnessAqua
hi! link cssDimensionProp DeathconsciousnessAqua
hi! link cssRenderProp DeathconsciousnessAqua
hi! link cssColorProp DeathconsciousnessAqua
hi! link cssGeneratedContentProp DeathconsciousnessAqua

" JavaScript:

hi! link javaScriptBraces DeathconsciousnessFg1
hi! link javaScriptFunction DeathconsciousnessAqua
hi! link javaScriptIdentifier DeathconsciousnessRed
hi! link javaScriptMember DeathconsciousnessBlue
hi! link javaScriptNumber DeathconsciousnessPurple
hi! link javaScriptNull DeathconsciousnessPurple
hi! link javaScriptParens DeathconsciousnessFg3

" YAJS:

hi! link javascriptImport DeathconsciousnessAqua
hi! link javascriptExport DeathconsciousnessAqua
hi! link javascriptClassKeyword DeathconsciousnessAqua
hi! link javascriptClassExtends DeathconsciousnessAqua
hi! link javascriptDefault DeathconsciousnessAqua

hi! link javascriptClassName DeathconsciousnessYellow
hi! link javascriptClassSuperName DeathconsciousnessYellow
hi! link javascriptGlobal DeathconsciousnessYellow

hi! link javascriptEndColons DeathconsciousnessFg1
hi! link javascriptFuncArg DeathconsciousnessFg1
hi! link javascriptGlobalMethod DeathconsciousnessFg1
hi! link javascriptNodeGlobal DeathconsciousnessFg1
hi! link javascriptBOMWindowProp DeathconsciousnessFg1
hi! link javascriptArrayMethod DeathconsciousnessFg1
hi! link javascriptArrayStaticMethod DeathconsciousnessFg1
hi! link javascriptCacheMethod DeathconsciousnessFg1
hi! link javascriptDateMethod DeathconsciousnessFg1
hi! link javascriptMathStaticMethod DeathconsciousnessFg1

" hi! link javascriptProp DeathconsciousnessFg1
hi! link javascriptURLUtilsProp DeathconsciousnessFg1
hi! link javascriptBOMNavigatorProp DeathconsciousnessFg1
hi! link javascriptDOMDocMethod DeathconsciousnessFg1
hi! link javascriptDOMDocProp DeathconsciousnessFg1
hi! link javascriptBOMLocationMethod DeathconsciousnessFg1
hi! link javascriptBOMWindowMethod DeathconsciousnessFg1
hi! link javascriptStringMethod DeathconsciousnessFg1

hi! link javascriptVariable DeathconsciousnessOrange
" hi! link javascriptVariable DeathconsciousnessRed
" hi! link javascriptIdentifier DeathconsciousnessOrange
" hi! link javascriptClassSuper DeathconsciousnessOrange
hi! link javascriptIdentifier DeathconsciousnessOrange
hi! link javascriptClassSuper DeathconsciousnessOrange

" hi! link javascriptFuncKeyword DeathconsciousnessOrange
" hi! link javascriptAsyncFunc DeathconsciousnessOrange
hi! link javascriptFuncKeyword DeathconsciousnessAqua
hi! link javascriptAsyncFunc DeathconsciousnessAqua
hi! link javascriptClassStatic DeathconsciousnessOrange

hi! link javascriptOperator DeathconsciousnessRed
hi! link javascriptForOperator DeathconsciousnessRed
hi! link javascriptYield DeathconsciousnessRed
hi! link javascriptExceptions DeathconsciousnessRed
hi! link javascriptMessage DeathconsciousnessRed

hi! link javascriptTemplateSB DeathconsciousnessAqua
hi! link javascriptTemplateSubstitution DeathconsciousnessFg1

" hi! link javascriptLabel DeathconsciousnessBlue
" hi! link javascriptObjectLabel DeathconsciousnessBlue
" hi! link javascriptPropertyName DeathconsciousnessBlue
hi! link javascriptLabel DeathconsciousnessFg1
hi! link javascriptObjectLabel DeathconsciousnessFg1
hi! link javascriptPropertyName DeathconsciousnessFg1

hi! link javascriptLogicSymbols DeathconsciousnessFg1
hi! link javascriptArrowFunc DeathconsciousnessYellow

hi! link javascriptDocParamName DeathconsciousnessFg4
hi! link javascriptDocTags DeathconsciousnessFg4
hi! link javascriptDocNotation DeathconsciousnessFg4
hi! link javascriptDocParamType DeathconsciousnessFg4
hi! link javascriptDocNamedParamType DeathconsciousnessFg4

hi! link javascriptBrackets DeathconsciousnessFg1
hi! link javascriptDOMElemAttrs DeathconsciousnessFg1
hi! link javascriptDOMEventMethod DeathconsciousnessFg1
hi! link javascriptDOMNodeMethod DeathconsciousnessFg1
hi! link javascriptDOMStorageMethod DeathconsciousnessFg1
hi! link javascriptHeadersMethod DeathconsciousnessFg1

hi! link javascriptAsyncFuncKeyword DeathconsciousnessRed
hi! link javascriptAwaitFuncKeyword DeathconsciousnessRed

" PanglossJS:

hi! link jsClassKeyword DeathconsciousnessAqua
hi! link jsExtendsKeyword DeathconsciousnessAqua
hi! link jsExportDefault DeathconsciousnessAqua
hi! link jsTemplateBraces DeathconsciousnessAqua
hi! link jsGlobalNodeObjects DeathconsciousnessFg1
hi! link jsGlobalObjects DeathconsciousnessFg1
hi! link jsFunction DeathconsciousnessAqua
hi! link jsFuncParens DeathconsciousnessFg3
hi! link jsParens DeathconsciousnessFg3
hi! link jsNull DeathconsciousnessPurple
hi! link jsUndefined DeathconsciousnessPurple
hi! link jsClassDefinition DeathconsciousnessYellow

" TypeScript:

hi! link typeScriptReserved DeathconsciousnessAqua
hi! link typeScriptLabel DeathconsciousnessAqua
hi! link typeScriptFuncKeyword DeathconsciousnessAqua
hi! link typeScriptIdentifier DeathconsciousnessOrange
hi! link typeScriptBraces DeathconsciousnessFg1
hi! link typeScriptEndColons DeathconsciousnessFg1
hi! link typeScriptDOMObjects DeathconsciousnessFg1
hi! link typeScriptAjaxMethods DeathconsciousnessFg1
hi! link typeScriptLogicSymbols DeathconsciousnessFg1
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects DeathconsciousnessFg1
hi! link typeScriptParens DeathconsciousnessFg3
hi! link typeScriptOpSymbols DeathconsciousnessFg3
hi! link typeScriptHtmlElemProperties DeathconsciousnessFg1
hi! link typeScriptNull DeathconsciousnessPurple
hi! link typeScriptInterpolationDelimiter DeathconsciousnessAqua

" PureScript:

hi! link purescriptModuleKeyword DeathconsciousnessAqua
hi! link purescriptModuleName DeathconsciousnessFg1
hi! link purescriptWhere DeathconsciousnessAqua
hi! link purescriptDelimiter DeathconsciousnessFg4
hi! link purescriptType DeathconsciousnessFg1
hi! link purescriptImportKeyword DeathconsciousnessAqua
hi! link purescriptHidingKeyword DeathconsciousnessAqua
hi! link purescriptAsKeyword DeathconsciousnessAqua
hi! link purescriptStructure DeathconsciousnessAqua
hi! link purescriptOperator DeathconsciousnessBlue

hi! link purescriptTypeVar DeathconsciousnessFg1
hi! link purescriptConstructor DeathconsciousnessFg1
hi! link purescriptFunction DeathconsciousnessFg1
hi! link purescriptConditional DeathconsciousnessOrange
hi! link purescriptBacktick DeathconsciousnessOrange

" CoffeeScript:

hi! link coffeeExtendedOp DeathconsciousnessFg3
hi! link coffeeSpecialOp DeathconsciousnessFg3
hi! link coffeeCurly DeathconsciousnessOrange
hi! link coffeeParen DeathconsciousnessFg3
hi! link coffeeBracket DeathconsciousnessOrange

" Ruby:

hi! link rubyStringDelimiter DeathconsciousnessGreen
hi! link rubyInterpolationDelimiter DeathconsciousnessAqua

" ObjectiveC:

hi! link objcTypeModifier DeathconsciousnessRed
hi! link objcDirective DeathconsciousnessBlue

" Go:

hi! link goDirective DeathconsciousnessAqua
hi! link goConstants DeathconsciousnessPurple
hi! link goDeclaration DeathconsciousnessRed
hi! link goDeclType DeathconsciousnessBlue
hi! link goBuiltins DeathconsciousnessOrange

" Lua:

hi! link luaIn DeathconsciousnessRed
hi! link luaFunction DeathconsciousnessAqua
hi! link luaTable DeathconsciousnessOrange

" MoonScript:

hi! link moonSpecialOp DeathconsciousnessFg3
hi! link moonExtendedOp DeathconsciousnessFg3
hi! link moonFunction DeathconsciousnessFg3
hi! link moonObject DeathconsciousnessYellow

" Java:

hi! link javaAnnotation DeathconsciousnessBlue
hi! link javaDocTags DeathconsciousnessAqua
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen DeathconsciousnessFg3
hi! link javaParen1 DeathconsciousnessFg3
hi! link javaParen2 DeathconsciousnessFg3
hi! link javaParen3 DeathconsciousnessFg3
hi! link javaParen4 DeathconsciousnessFg3
hi! link javaParen5 DeathconsciousnessFg3
hi! link javaOperator DeathconsciousnessOrange

hi! link javaVarArg DeathconsciousnessGreen

" Elixir:

hi! link elixirDocString Comment

hi! link elixirStringDelimiter DeathconsciousnessGreen
hi! link elixirInterpolationDelimiter DeathconsciousnessAqua

hi! link elixirModuleDeclaration DeathconsciousnessYellow

" Scala:

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition DeathconsciousnessFg1
hi! link scalaCaseFollowing DeathconsciousnessFg1
hi! link scalaCapitalWord DeathconsciousnessFg1
hi! link scalaTypeExtension DeathconsciousnessFg1

hi! link scalaKeyword DeathconsciousnessRed
hi! link scalaKeywordModifier DeathconsciousnessRed

hi! link scalaSpecial DeathconsciousnessAqua
hi! link scalaOperator DeathconsciousnessFg1

hi! link scalaTypeDeclaration DeathconsciousnessYellow
hi! link scalaTypeTypePostDeclaration DeathconsciousnessYellow

hi! link scalaInstanceDeclaration DeathconsciousnessFg1
hi! link scalaInterpolation DeathconsciousnessAqua

" Markdown:

call s:HL('markdownItalic', s:fg3, s:none, s:italic)

hi! link markdownH1 DeathconsciousnessGreenBold
hi! link markdownH2 DeathconsciousnessGreenBold
hi! link markdownH3 DeathconsciousnessYellowBold
hi! link markdownH4 DeathconsciousnessYellowBold
hi! link markdownH5 DeathconsciousnessYellow
hi! link markdownH6 DeathconsciousnessYellow

hi! link markdownCode DeathconsciousnessAqua
hi! link markdownCodeBlock DeathconsciousnessAqua
hi! link markdownCodeDelimiter DeathconsciousnessAqua

hi! link markdownBlockquote DeathconsciousnessGray
hi! link markdownListMarker DeathconsciousnessGray
hi! link markdownOrderedListMarker DeathconsciousnessGray
hi! link markdownRule DeathconsciousnessGray
hi! link markdownHeadingRule DeathconsciousnessGray

hi! link markdownUrlDelimiter DeathconsciousnessFg3
hi! link markdownLinkDelimiter DeathconsciousnessFg3
hi! link markdownLinkTextDelimiter DeathconsciousnessFg3

hi! link markdownHeadingDelimiter DeathconsciousnessOrange
hi! link markdownUrl DeathconsciousnessPurple
hi! link markdownUrlTitleDelimiter DeathconsciousnessGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" Haskell:

" hi! link haskellType DeathconsciousnessYellow
" hi! link haskellOperators DeathconsciousnessOrange
" hi! link haskellConditional DeathconsciousnessAqua
" hi! link haskellLet DeathconsciousnessOrange
"
hi! link haskellType DeathconsciousnessFg1
hi! link haskellIdentifier DeathconsciousnessFg1
hi! link haskellSeparator DeathconsciousnessFg1
hi! link haskellDelimiter DeathconsciousnessFg4
hi! link haskellOperators DeathconsciousnessBlue
"
hi! link haskellBacktick DeathconsciousnessOrange
hi! link haskellStatement DeathconsciousnessOrange
hi! link haskellConditional DeathconsciousnessOrange

hi! link haskellLet DeathconsciousnessAqua
hi! link haskellDefault DeathconsciousnessAqua
hi! link haskellWhere DeathconsciousnessAqua
hi! link haskellBottom DeathconsciousnessAqua
hi! link haskellBlockKeywords DeathconsciousnessAqua
hi! link haskellImportKeywords DeathconsciousnessAqua
hi! link haskellDeclKeyword DeathconsciousnessAqua
hi! link haskellDeriving DeathconsciousnessAqua
hi! link haskellAssocType DeathconsciousnessAqua

hi! link haskellNumber DeathconsciousnessPurple
hi! link haskellPragma DeathconsciousnessPurple

hi! link haskellString DeathconsciousnessGreen
hi! link haskellChar DeathconsciousnessGreen

" Json:

hi! link jsonKeyword DeathconsciousnessGreen
hi! link jsonQuote DeathconsciousnessGreen
hi! link jsonBraces DeathconsciousnessFg1
hi! link jsonString DeathconsciousnessFg1
