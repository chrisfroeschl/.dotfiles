" File: theme.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Mon 04 Jan 2021 04:37:55 PM CET
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

set background=dark
let g:colors_name='theme'


if version >= 700
    hi CursorLine ctermfg=NONE ctermbg=8 cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=8 cterm=NONE
    hi TabLineFill ctermfg=15 ctermbg=NONE cterm=NONE
    hi TabLine ctermfg=15 ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=15 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=8 cterm=bold

    hi Pmenu ctermfg=0 ctermbg=15 cterm=NONE
    hi PmenuSel ctermfg=15 ctermbg=NONE cterm=bold
    hi PmenuSbar ctermfg=NONE ctermbg=7 cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=0 cterm=NONE
endif

if version >= 703
    hi ColorColumn ctermfg=NONE ctermbg=8 cterm=NONE
    hi Conceal ctermfg=14 ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=15 ctermbg=NONE cterm=bold
endif

hi Normal ctermfg=15 ctermbg=NONE cterm=NONE
hi Visual ctermfg=NONE ctermbg=8 cterm=NONE
hi VisualNOS ctermfg=NONE ctermbg=8 cterm=NONE
hi Search ctermfg=11 ctermbg=0 cterm=inverse,bold
hi IncSearch ctermfg=3 ctermbg=0 cterm=inverse
hi SpecialKey ctermfg=7 ctermbg=NONE cterm=NONE
hi NonText ctermfg=15 ctermbg=NONE cterm=NONE
hi Underline ctermfg=9 ctermbg=NONE cterm=underline
hi StatusLine ctermfg=0 ctermbg=15 cterm=NONE
hi StatusLineNC ctermfg=0 ctermbg=15 cterm=NONE
hi VertSplit ctermfg=15 ctermbg=NONE cterm=NONE
hi Terminal ctermfg=15 ctermbg=NONE cterm=NONE
hi EndOfBuffer ctermfg=15 ctermbg=NONE cterm=NONE
hi WildMenu ctermfg=15 ctermbg=NONE cterm=bold
hi ErrorMsg ctermfg=9 ctermbg=NONE cterm=bold
hi MoreMsg ctermfg=15 ctermbg=NONE cterm=bold
hi Question ctermfg=15 ctermbg=NONE cterm=bold
hi WarningMsg ctermfg=9 ctermbg=NONE cterm=bold
hi LineNr ctermfg=15 ctermbg=NONE cterm=NONE
hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi Folded ctermfg=15 ctermbg=0 cterm=italic
hi FoldColumn ctermfg=15 ctermbg=NONE cterm=NONE
hi Cursor ctermfg=NONE ctermbg=NONE cterm=inverse
hi vCursor ctermfg=NONE ctermbg=NONE cterm=inverse
hi iCursor ctermfg=NONE ctermbg=NONE cterm=inverse
hi lCursor ctermfg=NONE ctermbg=NONE cterm=inverse
hi Special ctermfg=7 ctermbg=NONE cterm=NONE
hi Comment ctermfg=7 ctermbg=NONE cterm=NONE
hi Todo ctermfg=11 ctermbg=NONE cterm=bold,underline
hi Error ctermfg=9 ctermbg=NONE cterm=bold

hi Statement ctermfg=9 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=13 ctermbg=NONE cterm=NONE
hi Repeat ctermfg=13 ctermbg=NONE cterm=NONE
hi Label ctermfg=13 ctermbg=NONE cterm=NONE
hi Exception ctermfg=9 ctermbg=NONE cterm=NONE
hi Operator ctermfg=15 ctermbg=NONE cterm=bold
hi Keyword ctermfg=9 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=13 ctermbg=NONE cterm=NONE
hi Function ctermfg=10 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=10 ctermbg=NONE cterm=NONE
hi Include ctermfg=14 ctermbg=NONE cterm=NONE
hi Define ctermfg=14 ctermbg=NONE cterm=NONE
hi Macro ctermfg=14 ctermbg=NONE cterm=NONE
hi PreCondit ctermfg=14 ctermbg=NONE cterm=NONE
hi Constant ctermfg=13 ctermbg=NONE cterm=NONE
hi Character ctermfg=13 ctermbg=NONE cterm=NONE
hi String ctermfg=2 ctermbg=NONE cterm=NONE
hi Boolean ctermfg=10 ctermbg=NONE cterm=NONE
hi Number ctermfg=15 ctermbg=NONE cterm=NONE
hi Float ctermfg=15 ctermbg=NONE cterm=NONE
hi Type ctermfg=3 ctermbg=NONE cterm=bold
hi StorageClass ctermfg=11 ctermbg=NONE cterm=NONE
hi Structure ctermfg=10 ctermbg=NONE cterm=NONE
hi Typedef ctermfg=10 ctermbg=NONE cterm=NONE


hi DiffDelete ctermfg=1 ctermbg=NONE cterm=NONE
hi GitGutterDelete ctermfg=1 ctermbg=NONE cterm=NONE
hi DiffAdd ctermfg=2 ctermbg=NONE cterm=NONE
hi GitGutterAdd ctermfg=2 ctermbg=NONE cterm=NONE
hi DiffChange ctermfg=3 ctermbg=NONE cterm=NONE
hi GitGutterChange ctermfg=3 ctermbg=NONE cterm=NONE
hi DiffText ctermfg=15 ctermbg=NONE cterm=NONE
hi diffAdded ctermfg=2 ctermbg=NONE cterm=NONE
hi diffRemoved ctermfg=1 ctermbg=NONE cterm=NONE
hi diffChanged ctermfg=3 ctermbg=NONE cterm=NONE
hi diffFile ctermfg=11 ctermbg=NONE cterm=NONE
hi diffNewFile ctermfg=11 ctermbg=NONE cterm=NONE
hi diffLine ctermfg=14 ctermbg=NONE cterm=NONE

if has("spell")
    hi SpellCap ctermfg=11 ctermbg=NONE cterm=bold,italic
    hi SpellBad ctermfg=9 ctermbg=NONE cterm=undercurl
    hi SpellLocal ctermfg=14 ctermbg=NONE cterm=undercurl
    hi SpellRare ctermfg=7 ctermbg=NONE cterm=undercurl
endif

hi netrwDir ctermfg=2 ctermbg=NONE cterm=NONE
hi netrwClassify ctermfg=2 ctermbg=NONE cterm=NONE
hi netrwLink ctermfg=13 ctermbg=NONE cterm=NONE
hi netrwExe ctermfg=9 ctermbg=NONE cterm=NONE
hi netrwComment ctermfg=7 ctermbg=NONE cterm=NONE
hi netrwList ctermfg=14 ctermbg=NONE cterm=NONE
hi netrwHelpCmd ctermfg=14 ctermbg=NONE cterm=NONE
hi netrwCmdSep ctermfg=7 ctermbg=NONE cterm=NONE
hi netrwVersion ctermfg=10 ctermbg=NONE cterm=NONE

hi CocErrorSign ctermfg=1 ctermbg=NONE cterm=NONE
hi CocWarningSign ctermfg=11 ctermbg=NONE cterm=NONE
hi CocInfoSign ctermfg=13 ctermbg=NONE cterm=NONE
hi CocHintSign ctermfg=14 ctermbg=NONE cterm=NONE
hi CocErrorFloat ctermfg=0 ctermbg=15 cterm=NONE
hi CocWarningFloat ctermfg=0 ctermbg=15 cterm=NONE
hi CocInfoFloat ctermfg=0 ctermbg=15 cterm=NONE
hi CocHintFloat ctermfg=0 ctermbg=15 cterm=NONE
hi CocDiagnosticsError ctermfg=9 ctermbg=0 cterm=NONE
hi CocDiagnosticsWarning ctermfg=11 ctermbg=0 cterm=NONE
hi CocDiagnosticsInfo ctermfg=13 ctermbg=0 cterm=NONE
hi CocDiagnosticsHint ctermfg=14 ctermbg=0 cterm=NONE
hi CocErrorHighlight ctermfg=9 ctermbg=NONE cterm=undercurl
hi CocWarningHighlight ctermfg=11 ctermbg=NONE cterm=undercurl
hi CocInfoHighlight ctermfg=13 ctermbg=NONE cterm=undercurl
hi CocHintHighlight ctermfg=14 ctermbg=NONE cterm=undercurl

hi htmlTag ctermfg=9 ctermbg=NONE cterm=NONE
hi htmlEndTag ctermfg=9 ctermbg=NONE cterm=NONE
hi htmlTagName ctermfg=15 ctermbg=NONE cterm=NONE
hi htmlArg ctermfg=9 ctermbg=NONE cterm=NONE
hi htmlScriptTag ctermfg=11 ctermbg=NONE cterm=bold
hi htmlTagN ctermfg=15 ctermbg=NONE cterm=NONE
hi htmlSpecialTagName ctermfg=7 ctermbg=NONE cterm=NONE
hi htmlSpecialChar ctermfg=10 ctermbg=NONE cterm=NONE
hi htmlLink ctermfg=9 ctermbg=NONE cterm=underline
hi htmlBold ctermfg=15 ctermbg=NONE cterm=bold
hi htmlItalic ctermfg=15 ctermbg=NONE cterm=italic
hi htmlUnderline ctermfg=15 ctermbg=NONE cterm=underline
hi htmlUnderlineItalic ctermfg=15 ctermbg=NONE cterm=underline,italic
hi htmlBoldUnderline ctermfg=15 ctermbg=NONE cterm=bold,underline
hi htmlBoldItalic ctermfg=15 ctermbg=NONE cterm=bold,italic
hi htmlBoldUnderlineItalic ctermfg=15 ctermbg=NONE cterm=bold,underline,italic
hi htmlUnderlineItalic ctermfg=15 ctermbg=NONE cterm=underline,italic

hi xmlTag ctermfg=9 ctermbg=NONE cterm=NONE
hi xmlEndTag ctermfg=9 ctermbg=NONE cterm=NONE
hi xmlTagName ctermfg=15 ctermbg=NONE cterm=NONE
hi xmlEqual ctermfg=15 ctermbg=NONE cterm=NONE
hi docbkKeyword ctermfg=14 ctermbg=NONE cterm=NONE
hi xmlDocTypeDecl ctermfg=7 ctermbg=NONE cterm=NONE
hi xmlDocTypeKeyword ctermfg=13 ctermbg=NONE cterm=NONE
hi xmlCdataStart ctermfg=7 ctermbg=NONE cterm=NONE
hi xmlCdataCdata ctermfg=13 ctermbg=NONE cterm=NONE
hi dtdFunction ctermfg=7 ctermbg=NONE cterm=NONE
hi dtdTagName ctermfg=13 ctermbg=NONE cterm=NONE
hi xmlAttrib ctermfg=14 ctermbg=NONE cterm=NONE
hi xmlProcessingDelim ctermfg=7 ctermbg=NONE cterm=NONE
hi dtdParamEntityPunct ctermfg=7 ctermbg=NONE cterm=NONE
hi xmlEntity ctermfg=11 ctermbg=NONE cterm=NONE
hi xmlEntityPunct ctermfg=11 ctermbg=NONE cterm=NONE

hi vimCommentTitle ctermfg=15 ctermbg=NONE cterm=bold
hi vimNotation ctermfg=11 ctermbg=NONE cterm=NONE
hi vimBracket ctermfg=11 ctermbg=NONE cterm=NONE
hi vimMapModKey ctermfg=11 ctermbg=NONE cterm=NONE
hi vimFuncSID ctermfg=15 ctermbg=NONE cterm=NONE
hi vimSetSep ctermfg=15 ctermbg=NONE cterm=NONE
hi vimContinue ctermfg=15 ctermbg=NONE cterm=NONE

hi cOperator ctermfg=13 ctermbg=NONE cterm=NONE
hi cStructure ctermfg=11 ctermbg=NONE cterm=NONE

hi pythonBuiltin ctermfg=11 ctermbg=NONE cterm=NONE
hi pythonBuiltinObj ctermfg=11 ctermbg=NONE cterm=NONE
hi pythonBuiltinFunc ctermfg=11 ctermbg=NONE cterm=NONE
hi pythonFunction ctermfg=14 ctermbg=NONE cterm=NONE
hi pythonDecorator ctermfg=9 ctermbg=NONE cterm=NONE
hi pythonInclude ctermfg=13 ctermbg=NONE cterm=NONE
hi pythonImport ctermfg=13 ctermbg=NONE cterm=NONE
hi pythonRun ctermfg=13 ctermbg=NONE cterm=NONE
hi pythonCoding ctermfg=13 ctermbg=NONE cterm=NONE
hi pythonOperator ctermfg=15 ctermbg=NONE cterm=bold
hi pythonException ctermfg=9 ctermbg=NONE cterm=NONE
hi pythonException ctermfg=13 ctermbg=NONE cterm=NONE
hi pythonBoolean ctermfg=10 ctermbg=NONE cterm=NONE
hi pythonDot ctermfg=15 ctermbg=NONE cterm=NONE
hi pythonConditional ctermfg=9 ctermbg=NONE cterm=NONE
hi pythonRepeat ctermfg=9 ctermbg=NONE cterm=NONE
hi pythonDottedName ctermfg=10 ctermbg=NONE cterm=NONE

hi cssBraces ctermfg=10 ctermbg=NONE cterm=NONE
hi cssFunctionName ctermfg=11 ctermbg=NONE cterm=NONE
hi cssIdentifier ctermfg=15 ctermbg=NONE cterm=NONE
hi cssClassName ctermfg=15 ctermbg=NONE cterm=NONE
hi cssColor ctermfg=14 ctermbg=NONE cterm=NONE
hi cssSelectorOp ctermfg=14 ctermbg=NONE cterm=NONE
hi cssSelectorOp2 ctermfg=14 ctermbg=NONE cterm=NONE
hi cssImportant ctermfg=9 ctermbg=NONE cterm=NONE
hi cssVendor ctermfg=15 ctermbg=NONE cterm=NONE
hi cssTextProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssAnimationProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssUIProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssTransformProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssTransitionProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssBoxProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssFontDescriptiorProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssFlexibleBoxProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssBorderOutlineProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssBackgroundProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssMarginProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssListProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssTableProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssFontProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssPaddingProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssDimensionProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssDimensionProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssRenderProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssColorProp ctermfg=10 ctermbg=NONE cterm=NONE
hi cssGeneratedContentProp ctermfg=10 ctermbg=NONE cterm=NONE

hi javaScriptBraces ctermfg=7 ctermbg=NONE cterm=NONE
hi javaScriptFunction ctermfg=14 ctermbg=NONE cterm=NONE
hi javaScriptIdentifier ctermfg=2 ctermbg=NONE cterm=NONE
hi javaScriptMember ctermfg=14 ctermbg=NONE cterm=NONE
hi javaScriptNumber ctermfg=15 ctermbg=NONE cterm=NONE
hi javaScriptNull ctermfg=13 ctermbg=NONE cterm=NONE
hi javaScriptParens ctermfg=7 ctermbg=NONE cterm=NONE

hi javascriptImport ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptExport ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptClassKeyword ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptClassExtends ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptDefault ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptClassName ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptClassSuperName ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptGlobal ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptEndColons ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptFuncArg ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptGlobalMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptNodeGlobal ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptBOMWindowProp ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptArrayMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptArrayStaticMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptCacheMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDateMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptMathStaticMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptURLUtilsProp ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptBOMNavigatorProp ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDOMDocMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDOMDocMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDOMDocProp ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptBOMLocationMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptBOMWindowMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptStringMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptVariable ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptIdentifier ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptClassSuper ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptFuncKeyword ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptAsyncFunc ctermfg=14 ctermbg=NONE cterm=NONE
hi javascriptClassStatic ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptOperator ctermfg=15 ctermbg=NONE cterm=bold
hi javascriptForOperator ctermfg=9 ctermbg=NONE cterm=NONE
hi javascriptYield ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptExceptions ctermfg=9 ctermbg=NONE cterm=NONE
hi javascriptMessage ctermfg=9 ctermbg=NONE cterm=NONE
hi javascriptTemplateSB ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptTemplateSubstitution ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptLabel ctermfg=9 ctermbg=NONE cterm=NONE
hi javascriptObjectLabel ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptPropertyName ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptLogicSymbols ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptArrowFunc ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptDocParamName ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDocTags ctermfg=10 ctermbg=NONE cterm=NONE
hi javascriptDocNotation ctermfg=10 ctermbg=NONE cterm=NONE
hi javascriptDocParamType ctermfg=10 ctermbg=NONE cterm=NONE
hi javascriptDocNamedParamType ctermfg=10 ctermbg=NONE cterm=NONE
hi javascriptBrackets ctermfg=7 ctermbg=NONE cterm=NONE
hi javascriptDOMElemAttrs ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDOMEventMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDOMNodeMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptDOMStorageMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptHeadersMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptHeadersMethod ctermfg=15 ctermbg=NONE cterm=NONE
hi javascriptAsyncFuncKeyword ctermfg=13 ctermbg=NONE cterm=NONE
hi javascriptAwaitFuncKeyword ctermfg=13 ctermbg=NONE cterm=NONE
hi jsClassKeyword ctermfg=13 ctermbg=NONE cterm=NONE
hi jsExtendsKeyword ctermfg=13 ctermbg=NONE cterm=NONE
hi jsExportDefault ctermfg=13 ctermbg=NONE cterm=NONE
hi jsTemplateBraces ctermfg=13 ctermbg=NONE cterm=NONE
hi jsGlobalNodeObjects ctermfg=13 ctermbg=NONE cterm=NONE
hi jsGlobalObjects ctermfg=13 ctermbg=NONE cterm=NONE
hi jsFunction ctermfg=13 ctermbg=NONE cterm=NONE
hi jsFuncParens ctermfg=7 ctermbg=NONE cterm=NONE
hi jsParens ctermfg=7 ctermbg=NONE cterm=NONE
hi jsNull ctermfg=13 ctermbg=NONE cterm=NONE
hi jsUndefined ctermfg=13 ctermbg=NONE cterm=NONE
hi jsClassDefinition ctermfg=13 ctermbg=NONE cterm=NONE

hi typeScriptReserved ctermfg=13 ctermbg=NONE cterm=NONE
hi typeScriptLabel ctermfg=9 ctermbg=NONE cterm=NONE
hi typeScriptFuncKeyword ctermfg=14 ctermbg=NONE cterm=NONE
hi typeScriptIdentifier ctermfg=10 ctermbg=NONE cterm=NONE
hi typeScriptBraces ctermfg=10 ctermbg=NONE cterm=NONE
hi typeScriptEndColons ctermfg=7 ctermbg=NONE cterm=NONE
hi typeScriptDOMObjects ctermfg=7 ctermbg=NONE cterm=NONE
hi typeScriptAjaxMethods ctermfg=15 ctermbg=NONE cterm=NONE
hi typeScriptScriptLogicSymbols ctermfg=15 ctermbg=NONE cterm=NONE
hi typeScriptDocSeeTag ctermfg=7 ctermbg=NONE cterm=NONE
hi typeScriptDocParam ctermfg=7 ctermbg=NONE cterm=NONE
hi typeScriptDocTags ctermfg=10 ctermbg=NONE cterm=NONE
hi typeScriptGlobalObjects ctermfg=15 ctermbg=NONE cterm=NONE
hi typeScriptParens ctermfg=10 ctermbg=NONE cterm=NONE
hi typeScriptOpSymbols ctermfg=7 ctermbg=NONE cterm=NONE
hi typeScriptHtmlElemProperties ctermfg=15 ctermbg=NONE cterm=NONE
hi typeScriptNull ctermfg=13 ctermbg=NONE cterm=NONE
hi typeScriptInterpolationDelimiter ctermfg=10 ctermbg=NONE cterm=NONE

hi javaAnnotation ctermfg=12 ctermbg=NONE cterm=NONE
hi javaDocTags ctermfg=10 ctermbg=NONE cterm=NONE
hi javaCommentTitle ctermfg=15 ctermbg=NONE cterm=NONE
hi javaParen ctermfg=15 ctermbg=NONE cterm=NONE
hi javaParen1 ctermfg=15 ctermbg=NONE cterm=NONE
hi javaParen2 ctermfg=15 ctermbg=NONE cterm=NONE
hi javaParen3 ctermfg=15 ctermbg=NONE cterm=NONE
hi javaParen4 ctermfg=15 ctermbg=NONE cterm=NONE
hi javaParen5 ctermfg=15 ctermbg=NONE cterm=NONE
hi javaOperator ctermfg=15 ctermbg=NONE cterm=bold
hi javaVarArg ctermfg=10 ctermbg=NONE cterm=NONE


hi markdownItalic ctermfg=7 ctermbg=NONE cterm=italic
hi markdownH1 ctermfg=15 ctermbg=NONE cterm=bold
hi markdownH2 ctermfg=15 ctermbg=NONE cterm=bold
hi markdownH3 ctermfg=15 ctermbg=NONE cterm=bold
hi markdownH4 ctermfg=15 ctermbg=NONE cterm=bold
hi markdownH5 ctermfg=15 ctermbg=NONE cterm=bold
hi markdownH6 ctermfg=15 ctermbg=NONE cterm=bold
hi markdownCode ctermfg=10 ctermbg=NONE cterm=NONE
hi markdownCodeBlock ctermfg=2 ctermbg=NONE cterm=NONE
hi markdownCodeDelimiter ctermfg=2 ctermbg=NONE cterm=NONE
hi markdownBlockquote ctermfg=2 ctermbg=NONE cterm=NONE
hi markdownListMarker ctermfg=2 ctermbg=NONE cterm=NONE
hi markdownOrderedListMarker ctermfg=2 ctermbg=NONE cterm=NONE
hi markdownRule ctermfg=7 ctermbg=NONE cterm=NONE
hi markdownHeadingRule ctermfg=7 ctermbg=NONE cterm=NONE
hi markdownUrlDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
hi markdownLinkDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
hi markdownTextDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
hi markdownHeadingDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
hi markdownUrl ctermfg=9 ctermbg=NONE cterm=underline
hi markdownTitleDelimiter ctermfg=13 ctermbg=NONE cterm=NONE
hi markdownLinkText ctermfg=7 ctermbg=NONE cterm=underline
hi markdownIdDeclaration ctermfg=7 ctermbg=NONE cterm=underline

hi jsonKeyword ctermfg=15 ctermbg=NONE cterm=NONE
hi jsonQuote ctermfg=10 ctermbg=NONE cterm=NONE
hi jsonBraces ctermfg=10 ctermbg=NONE cterm=NONE
hi jsonString ctermfg=2 ctermbg=NONE cterm=NONE
