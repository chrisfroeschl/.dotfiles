" File: theme.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Tue 29 Dec 2020 01:09:41 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Vim theme.

highlight clear
if exists("g:syntax_on")
    syntax reset
endif

if !exists('g:theme_guisp_fallback') || index(['fg', 'bg'], g:theme_guisp_fallback) == -1
  let g:theme_guisp_fallback='NONE'
endif

set background=dark
let g:colors_name='theme'

let s:bold = 'bold,'
let s:italic = 'italic,'
let s:underline = 'underline,'
let s:undercurl = 'undercurl,'
let s:inverse = 'inverse,'
let s:none = ['NONE', 'NONE']

let s:black = ['#000000', 0]
let s:dark_red = ['#800000', 1]
let s:dark_green = ['#008000', 2]
let s:dark_yellow = ['#808000', 3]
let s:dark_blue = ['#000080', 4]
let s:dark_magenta = ['#800080', 5]
let s:dark_cyan = ['#008080', 6]
let s:light_grey = ['c0c0c0', 7]
let s:dark_grey = ['#808080', 8]
let s:red = ['#ff0000', 9]
let s:green = ['#00ff00', 10]
let s:yellow = ['#ffff00', 11]
let s:blue = ['#0000ff', 12]
let s:magenta = ['#ff00ff', 13]
let s:cyan = ['#00ffff', 14]
let s:white = ['#ffffff', 15]

" Highlighting Function.

function! s:HL(group, fg, ...)
  " Arguments: group, fg, bg, gui/xterm, guisp.

  " Foreground.
  let fg = a:fg

  " Background.
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " Emphasis.
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  " Special fallback.
  if a:0 >= 3
    if g:theme_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert highlighting.
    if g:theme_guisp_fallback == 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " Special.
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

call s:HL('Normal', s:white)

if version >= 700
    call s:HL('CursorLine', s:none, s:dark_grey)
    call s:HL('CursorColumn', s:none, s:dark_grey)

    call s:HL('TabLineFill', s:white)
    call s:HL('TabLine', s:white)
    call s:HL('TabLineSel', s:white)

    call s:HL('MatchParen', s:none, s:dark_grey, s:bold)
endif

if version >= 703
    call s:HL('ColorColumn', s:none, s:dark_grey)

    call s:HL('Conceal', s:cyan)

    call s:HL('CursorLineNr', s:white)
endif

call s:HL('Visual', s:none, s:dark_grey)
call s:HL('VisualNOS', s:none, s:dark_grey)
call s:HL('Search', s:yellow, s:black, s:inverse)
call s:HL('InSearch', s:white, s:black, s:inverse)
call s:HL('SpecialKey', s:light_grey)
call s:HL('NonText', s:white)
call s:HL('Underline', s:red, s:none, s:underline)
call s:HL('StatusLine', s:black, s:white)
call s:HL('StatusLineNC', s:black, s:white)
call s:HL('VertSplit', s:white)
call s:HL('Terminal', s:white, s:none)
call s:HL('EndOfBuffer', s:white)
call s:HL('WildMenu', s:white, s:none, s:bold)
call s:HL('ErrorMsg', s:red, s:none, s:bold)
call s:HL('MoreMsg', s:white, s:none, s:bold)
call s:HL('Question', s:white, s:none, s:bold)
call s:HL('WarningMsg', s:red, s:none, s:bold)
call s:HL('LineNr', s:white)
call s:HL('SignColumn', s:white)
call s:HL('Folded', s:white, s:black, s:italic)
call s:HL('FoldColum', s:white)
call s:HL('Cursor', s:none, s:none, s:inverse)
call s:HL('vCursor', s:none, s:none, s:inverse)
call s:HL('iCursor', s:none, s:none, s:inverse)
call s:HL('lCursor', s:none, s:none, s:inverse)
call s:HL('Special', s:light_grey)
call s:HL('Comment', s:light_grey)
call s:HL('Todo', s:yellow, s:none, s:bold)
call s:HL('Error', s:red, s:none, s:bold)

call s:HL('Statement', s:red)
call s:HL('Conditional', s:magenta)
call s:HL('Repeat', s:magenta)
call s:HL('Label', s:magenta)
call s:HL('Exception', s:red)
call s:HL('Operator', s:white)
call s:HL('Keyword', s:red)
call s:HL('Identifier', s:magenta)
call s:HL('Function', s:green)
call s:HL('PreProc', s:green, s:none)
call s:HL('Include', s:cyan, s:none)
call s:HL('Define', s:cyan, s:none)
call s:HL('Macro', s:cyan, s:none)
call s:HL('PreCondit', s:cyan, s:none)
call s:HL('Constant', s:magenta, s:none)
call s:HL('Character', s:magenta, s:none)
call s:HL('String', s:dark_green, s:none)
call s:HL('Boolean', s:green, s:none)
call s:HL('Number', s:white, s:none)
call s:HL('Float', s:white, s:none)
call s:HL('Type', s:black, s:white)
call s:HL('StorageClass', s:yellow)
call s:HL('Structure', s:green, s:none)
call s:HL('Typedef', s:green, s:none)

if version >= 700
    call s:HL('Pmenu', s:black, s:white)
    call s:HL('PmenuSel', s:white)
    call s:HL('PmenuSbar', s:none, s:light_grey)
    call s:HL('PmenuThumb', s:none, s:black)
endif

call s:HL('DiffDelete', s:black, s:dark_red, s:inverse)
call s:HL('GitGutterDelete', s:black, s:dark_red, s:inverse)
call s:HL('DiffAdd', s:black, s:dark_green, s:inverse)
call s:HL('GitGutterAdd', s:black, s:dark_green, s:inverse)
call s:HL('DiffChange', s:black, s:dark_yellow, s:inverse)
call s:HL('GitGutterChange', s:black, s:dark_yellow, s:inverse)
call s:HL('DiffText', s:yellow, s:black, s:inverse)

if has("spell")
    call s:HL('SpellCap', s:yellow, s:none, s:bold, s:italic)
    call s:HL('SpellBad', s:red, s:none, s:undercurl, s:blue)
    call s:HL('SpellLocal', s:cyan, s:none, s:undercurl, s:dark_cyan)
    call s:HL('SpellRare', s:dark_magenta, s:none, s:undercurl, s:dark_magenta)
endif

call s:HL('netrwDir', s:dark_green)
call s:HL('netrwClassify', s:dark_green)
call s:HL('netrwLink', s:light_grey)
call s:HL('netrwLink', s:magenta)
call s:HL('netrwExe', s:dark_red)
call s:HL('netrwComment', s:light_grey)
call s:HL('netrwList', s:cyan)
call s:HL('netrwHelpCmd', s:cyan)
call s:HL('netrwCmdSep', s:dark_grey)
call s:HL('netrwVersion', s:green)

call s:HL('CocErrorSign', s:red)
call s:HL('CocWarningSign', s:yellow)
call s:HL('CocInfoSign', s:magenta)
call s:HL('CocHintSign', s:cyan)
call s:HL('CocErrorFloat', s:black, s:white)
call s:HL('CocWarningFloat', s:black, s:white)
call s:HL('CocInfoFloat', s:black, s:white)
call s:HL('CocHintFloat', s:black, s:white)
call s:HL('CocDiagnosticsError', s:red, s:dark_grey)
call s:HL('CocDiagnosticsWarning', s:yellow, s:dark_grey)
call s:HL('CocDiagnosticsInfo', s:magenta, s:dark_grey)
call s:HL('CocDiagnosticsHint', s:cyan, s:dark_grey)
call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)

call s:HL('diffAdded', s:green)
call s:HL('diffRemoved', s:red)
call s:HL('diffChanged', s:dark_yellow)
call s:HL('diffFile', s:yellow)
call s:HL('diffNewFile', s:yellow)
call s:HL('diffLine', s:cyan)

call s:HL('htmlTag', s:red)
call s:HL('htmlEndTag', s:red)
call s:HL('htmlTagName', s:white)
call s:HL('htmlArg', s:red)
call s:HL('htmlScriptTag', s:yellow)
call s:HL('htmlTagN', s:white)
call s:HL('htmlSpecialTagName', s:dark_grey)
call s:HL('htmlSpecialChar', s:green)
call s:HL('htmlLink', s:light_grey, s:none, s:underline)
call s:HL('htmlBold', s:white, s:none, s:bold)
call s:HL('htmlBoldUnderline', s:white, s:none, s:bold, s:underline)
call s:HL('htmlBoldItalic', s:white, s:none, s:bold, s:italic)
call s:HL('htmlBoldUnderlineItalic', s:white, s:none, s:bold, s:underline, s:italic)
call s:HL('htmlUnderline', s:white, s:none, s:underline)
call s:HL('htmlUnderlineItalic', s:white, s:none, s:underline, s:italic)
call s:HL('htmlItalic', s:white, s:none, s:italic)

call s:HL('xmlTag', s:blue)
call s:HL('xmlEndTag', s:blue)
call s:HL('xmlTagName', s:blue)
call s:HL('xmlEqual', s:blue)
call s:HL('docbkKeyword', s:cyan, s:none, s:bold)
call s:HL('xmlDocTypeDecl', s:light_grey)
call s:HL('xmlDocTypeKeyword', s:magenta)
call s:HL('xmlCdataStart', s:light_grey)
call s:HL('xmlCdataCdata', s:magenta)
call s:HL('dtdFunction', s:light_grey)
call s:HL('dtdTagName', s:magenta)
call s:HL('xmlAttrib', s:cyan)
call s:HL('xmlProcessingDelim', s:light_grey)
call s:HL('dtdParamEntityPunct', s:light_grey)
call s:HL('xmlEntity', s:yellow)
call s:HL('xmlEntityPunct', s:yellow)

call s:HL('vimCommentTitle', s:white, s:none, s:bold)
call s:HL('vimNotation', s:yellow)
call s:HL('vimBracket', s:yellow)
call s:HL('vimMapModKey', s:yellow)
call s:HL('vimFuncSID', s:white)
call s:HL('vimSetSep', s:white)
call s:HL('vimContinue', s:white)

call s:HL('cOperator', s:magenta)
call s:HL('cStructure', s:yellow)

call s:HL('pythonBuiltin', s:yellow)
call s:HL('pythonBuiltinObj', s:yellow)
call s:HL('pythonBuiltinFunc', s:yellow)
call s:HL('pythonFunction', s:cyan)
call s:HL('pythonDecorator', s:red)
call s:HL('pythonInclude', s:magenta)
call s:HL('pythonImport', s:magenta)
call s:HL('pythonRun', s:magenta)
call s:HL('pythonCoding', s:magenta)
call s:HL('pythonOperator', s:blue)
call s:HL('pythonException', s:red)
call s:HL('pythonExceptions', s:magenta)
call s:HL('pythonBoolean', s:green)
call s:HL('pythonDot', s:white)
call s:HL('pythonConditional', s:red)
call s:HL('pythonRepeat', s:red)
call s:HL('pythonDottedName', s:green, s:none, s:bold)

call s:HL('cssBraces', s:green)
call s:HL('cssFunctionName', s:yellow)
call s:HL('cssIdentifier', s:white)
call s:HL('cssClassName', s:white)
call s:HL('cssColor', s:cyan)
call s:HL('cssSelectorOp', s:cyan)
call s:HL('cssSelectorOp2', s:cyan)
call s:HL('cssImportant', s:red)
call s:HL('cssVendor', s:white)
call s:HL('cssTextProp', s:green)
call s:HL('cssAnimationProp', s:green)
call s:HL('cssUIProp', s:green)
call s:HL('cssTransformProp', s:green)
call s:HL('cssTransitionProp', s:green)
call s:HL('cssPrintProp', s:green)
call s:HL('cssPositioningProp', s:green)
call s:HL('cssPositioningProp', s:green)
call s:HL('cssBoxProp', s:green)
call s:HL('cssFontDescriptiorProp', s:green)
call s:HL('cssFlexibleBoxProp', s:green)
call s:HL('cssBorderOutlineProp', s:green)
call s:HL('cssBackgroundProp', s:green)
call s:HL('cssMarginProp', s:green)
call s:HL('cssListProp', s:green)
call s:HL('cssTableProp', s:green)
call s:HL('cssFontProp', s:green)
call s:HL('cssPaddingProp', s:green)
call s:HL('cssDimensionProp', s:green)
call s:HL('cssRenderProp', s:green)
call s:HL('cssColorProp', s:green)
call s:HL('cssGeneratedContentProp', s:green)

call s:HL('javaScriptBraces', s:light_grey)
call s:HL('javaScriptFunction', s:cyan)
call s:HL('javaScriptIdentifier', s:dark_red)
call s:HL('javaScriptMember', s:cyan)
call s:HL('javaScriptNumber', s:white)
call s:HL('javaScriptNull', s:magenta)
call s:HL('javaScriptParens', s:light_grey)
call s:HL('javascriptImport', s:magenta)
call s:HL('javascriptExport', s:magenta)
call s:HL('javascriptClassKeyword', s:magenta)
call s:HL('javascriptClassExtends', s:magenta)
call s:HL('javascriptDefault', s:magenta)
call s:HL('javascriptClassName', s:cyan)
call s:HL('javascriptClassSuperName', s:cyan)
call s:HL('javascriptGlobal', s:cyan)
call s:HL('javascriptEndColons', s:white)
call s:HL('javascriptFuncArg', s:white)
call s:HL('javascriptGlobalMethod', s:white)
call s:HL('javascriptNodeGlobal', s:white)
call s:HL('javascriptBOMWindowProp', s:white)
call s:HL('javascriptArrayMethod', s:white)
call s:HL('javascriptArrayStaticMethod', s:white)
call s:HL('javascriptCacheMethod', s:white)
call s:HL('javascriptDateMethod', s:white)
call s:HL('javascriptMathStaticMethod', s:white)
call s:HL('javascriptURLUtilsProp', s:white)
call s:HL('javascriptBOMNavigatorProp', s:white)
call s:HL('javascriptDOMDocMethod', s:white)
call s:HL('javascriptDOMDocProp', s:white)
call s:HL('javascriptBOMLocationMethod', s:white)
call s:HL('javascriptBOMWindowMethod', s:white)
call s:HL('javascriptStringMethod', s:white)
call s:HL('javascriptVariable', s:cyan)
call s:HL('javascriptIdentifier', s:cyan)
call s:HL('javascriptClassSuper', s:cyan)
call s:HL('javascriptFuncKeyword', s:dark_cyan)
call s:HL('javascriptAsyncFunc', s:dark_cyan)
call s:HL('javascriptClassStatic', s:white)
call s:HL('javascriptOperator', s:blue)
call s:HL('javascriptForOperator', s:red)
call s:HL('javascriptYield', s:magenta)
call s:HL('javascriptExceptions', s:red)
call s:HL('javascriptMessage', s:red)
call s:HL('javascriptTemplateSB', s:white)
call s:HL('javascriptTemplateSubstitution', s:white)
call s:HL('javascriptLabel', s:red)
call s:HL('javascriptObjectLabel', s:white)
call s:HL('javascriptPropertyName', s:white)
call s:HL('javascriptLogicSymbols', s:white)
call s:HL('javascriptArrowFunc', s:magenta)
call s:HL('javascriptDocParamName', s:green)
call s:HL('javascriptDocTags', s:green)
call s:HL('javascriptDocNotation', s:green)
call s:HL('javascriptDocParamType', s:green)
call s:HL('javascriptDocNamedParamType', s:green)
call s:HL('javascriptBrackets', s:light_grey)
call s:HL('javascriptDOMElemAttrs', s:white)
call s:HL('javascriptDOMEventMethod', s:white)
call s:HL('javascriptDOMNodeMethod', s:white)
call s:HL('javascriptDOMStorageMethod', s:white)
call s:HL('javascriptHeadersMethod', s:white)
call s:HL('javascriptAsyncFuncKeyword', s:magenta)
call s:HL('javascriptAwaitFuncKeyword', s:magenta)
call s:HL('jsClassKeyword', s:magenta)
call s:HL('jsExtendsKeyword', s:magenta)
call s:HL('jsExportDefault', s:magenta)
call s:HL('jsTemplateBraces', s:magenta)
call s:HL('jsGlobalNodeObjects', s:white)
call s:HL('jsGlobalObjects', s:white)
call s:HL('jsFunction', s:magenta)
call s:HL('jsFuncParens', s:light_grey)
call s:HL('jsParens', s:light_grey)
call s:HL('jsNull', s:magenta)
call s:HL('jsUndefined', s:magenta)
call s:HL('jsClassDefinition', s:yellow)

call s:HL('typeScriptReserved', s:magenta)
call s:HL('typeScriptLabel', s:red)
call s:HL('typeScriptFuncKeyword', s:cyan)
call s:HL('typeScriptIdentifier', s:green)
call s:HL('typeScriptBraces', s:green)
call s:HL('typeScriptEndColons', s:light_grey)
call s:HL('typeScriptDOMObjects', s:light_grey)
call s:HL('typeScriptAjaxMethods', s:white)
call s:HL('typeScriptScriptLogicSymbols', s:white)
call s:HL('typeScriptDocSeeTag', s:light_grey)
call s:HL('typeScriptDocParam', s:light_grey)
call s:HL('typeScriptDocTags', s:green)
call s:HL('typeScriptGlobalObjects', s:white)
call s:HL('typeScriptParens', s:green)
call s:HL('typeScriptOpSymbols', s:light_grey)
call s:HL('typeScriptHtmlElemProperties', s:white)
call s:HL('typeScriptNull', s:magenta)
call s:HL('typeScriptInterpolationDelimiter', s:green)

call s:HL('purescriptModuleKeyword', s:magenta)
call s:HL('purescriptModuleName', s:white)
call s:HL('purescriptWhere', s:magenta)
call s:HL('purescriptDelimiter', s:white)
call s:HL('purescriptType', s:white)
call s:HL('purescriptImportKeyword', s:magenta)
call s:HL('purescriptHidingKeyword', s:magenta)
call s:HL('purescriptAsKeyword', s:magenta)
call s:HL('purescriptStructure', s:magenta)
call s:HL('purescriptOperator', s:blue)
call s:HL('purescriptTypeVar', s:white)
call s:HL('purescriptConstructor', s:white)
call s:HL('purescriptFunction', s:white)
call s:HL('purescriptConditional', s:red)
call s:HL('purescriptBacktick', s:yellow)

call s:HL('javaAnnotation', s:blue)
call s:HL('javaDocTags', s:green)
call s:HL('javaCommentTitle', s:white)
call s:HL('javaParen', s:white)
call s:HL('javaParen1', s:white)
call s:HL('javaParen2', s:white)
call s:HL('javaParen3', s:white)
call s:HL('javaParen4', s:white)
call s:HL('javaParen5', s:white)
call s:HL('javaOperator', s:blue)
call s:HL('javaVarArg', s:green)

call s:HL('markdownItalic', s:light_grey, s:none, s:italic)
call s:HL('markdownH1', s:white, s:none, s:bold)
call s:HL('markdownH2', s:white, s:none, s:bold)
call s:HL('markdownH3', s:white, s:none, s:bold)
call s:HL('markdownH4', s:white, s:none, s:bold)
call s:HL('markdownH5', s:white, s:none, s:bold)
call s:HL('markdownH6', s:white, s:none, s:bold)
call s:HL('markdownCode', s:green)
call s:HL('markdownCodeBlock', s:dark_green)
call s:HL('markdownCodeDelimiter', s:dark_green)
call s:HL('markdownBlockquote', s:light_grey)
call s:HL('markdownListMarker', s:light_grey)
call s:HL('markdownOrderedListMarker', s:light_grey)
call s:HL('markdownRule', s:light_grey)
call s:HL('markdownHeadingRule', s:light_grey)
call s:HL('markdownUrlDelimiter', s:light_grey)
call s:HL('markdownLinkDelimiter', s:light_grey)
call s:HL('markdownTextDelimiter', s:light_grey)
call s:HL('markdownHeadingDelimiter', s:magenta)
call s:HL('markdownUrl', s:red)
call s:HL('markdownTitleDelimiter', s:magenta)
call s:HL('markdownLinkText', s:light_grey, s:none, s:underline)
call s:HL('markdownIdDeclaration', s:light_grey, s:none, s:underline)

call s:HL('jsonKeyword', s:white)
call s:HL('jsonQuote', s:green)
call s:HL('jsonBraces', s:green)
call s:HL('jsonString', s:dark_green)
