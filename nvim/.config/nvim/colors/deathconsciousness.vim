hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='deathconsciousness'

let s:white           = { "gui": "#FFFFFF", "cterm": "231" }
let s:black           = { "gui": "#000000", "cterm": "16"  }
let s:light_black     = { "gui": "#262626", "cterm": "235" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:red             = { "gui": "#E32791", "cterm": "1"   }
let s:cyan            = { "gui": "#20A5BA", "cterm": "6"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:yellow          = { "gui": "#A89C14", "cterm": "3"   }
let s:magenta         = { "gui": "#ff00d7", "cterm": "201" }

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:black, "fg": s:white})

call s:h("Cursor",        {"bg": s:dark_green, "fg": s:white})
call s:h("Comment",       {"fg": s:medium_gray, "gui": "italic"})

call s:h("Constant",      {"fg": s:dark_green})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

call s:h("Identifier",    {"fg": s:dark_blue})

call s:h("Statement",     {"fg": s:magenta})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",      {"fg": s:white, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",     {"fg": s:magenta})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:red})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:light_green, "gui": "italic"})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:white, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:black})
call s:h("Error",         {"fg": s:white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:dark_green, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:dark_green})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:white, "fg": s:black})
call s:h("Search",        {"bg": s:light_green, "fg": s:black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:white})
call s:h("CursorLineNr",  {"fg": s:white})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:light_black})
call s:h("StatusLineNC",  {"bg": s:light_black, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:light_black, "fg": s:light_black})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"fg": s:black, "bg": s:white})
call s:h("VisualNOS",     {"bg": s:light_black})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:black, "bg": s:white})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:light_black})
call s:h("DiffAdd",       {"fg": s:light_green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
call s:h("SignColumn",    {"fg": s:light_green})

if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

call s:h("Pmenu",         {"fg": s:white, "bg": s:light_black})
call s:h("PmenuSel",      {"fg": s:white, "bg": s:dark_green})
call s:h("PmenuSbar",     {"fg": s:white, "bg": s:light_black})
call s:h("PmenuThumb",    {"fg": s:white, "bg": s:light_black})
call s:h("TabLine",       {"fg": s:white, "bg": s:light_black})
call s:h("TabLineSel",    {"fg": s:dark_green, "bg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:white, "bg": s:black})
call s:h("CursorColumn",  {"bg": s:light_black})
call s:h("CursorLine",    {"bg": s:light_black})
call s:h("ColorColumn",   {"bg": s:light_black})

call s:h("MatchParen",    {"bg": s:light_black, "fg": s:white})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:black, "fg": s:white})
call s:h("htmlH2",        {"bg": s:black, "fg": s:white})
call s:h("htmlH3",        {"bg": s:black, "fg": s:white})
call s:h("htmlH4",        {"bg": s:black, "fg": s:white})
call s:h("htmlH5",        {"bg": s:black, "fg": s:white})
call s:h("htmlH6",        {"bg": s:black, "fg": s:white})

" Synatastic
call s:h("SyntasticWarningSign",    {"fg": s:yellow})
call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",      {"fg": s:red})
call s:h("SyntasticError",          {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})

" Neomake
hi link NeomakeWarningSign	SyntasticWarningSign
hi link NeomakeErrorSign	SyntasticErrorSign

" ALE
hi link ALEWarningSign	SyntasticWarningSign
hi link ALEErrorSign	SyntasticErrorSign

" Signify, git-gutter
hi link SignifySignAdd              DiffAdd
hi link SignifySignDelete           DiffDelete
hi link SignifySignChange           DiffChange
hi link GitGutterAdd                DiffAdd
hi link GitGutterDelete             DiffDelete
hi link GitGutterChange             DiffChange
hi link GitGutterChangeDelete       LineNr
