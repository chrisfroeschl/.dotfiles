" File: theme.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Fri 05 Feb 2021 08:25:38 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Vim theme.

" Starter boilerplate. {{{

highlight clear
if exists("g:syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name='theme'

" }}}

" Version 700 bound. {{{

if version >= 700
    highlight CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    highlight CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    highlight TabLineFill ctermfg=15 ctermbg=NONE cterm=NONE
    highlight TabLine ctermfg=15 ctermbg=NONE cterm=NONE
    highlight TabLineSel ctermfg=15 ctermbg=NONE cterm=NONE
    highlight MatchParen ctermfg=NONE ctermbg=8 cterm=bold

    highlight Pmenu ctermfg=0 ctermbg=15 cterm=NONE
    highlight PmenuSel ctermfg=15 ctermbg=NONE cterm=bold
    highlight PmenuSbar ctermfg=NONE ctermbg=7 cterm=NONE
    highlight PmenuThumb ctermfg=NONE ctermbg=0 cterm=NONE
endif

" }}}

" Version 703 bound. {{{

if version >= 703
    highlight ColorColumn ctermfg=NONE ctermbg=8 cterm=NONE
    highlight Conceal ctermfg=14 ctermbg=NONE cterm=NONE
    highlight CursorLineNr ctermfg=15 ctermbg=NONE cterm=bold
endif

" }}}

" Vim highlighting. {{{

highlight Normal ctermfg=15 ctermbg=NONE cterm=NONE
highlight Visual ctermfg=NONE ctermbg=8 cterm=NONE
highlight VisualNOS ctermfg=NONE ctermbg=8 cterm=NONE
highlight Search ctermfg=11 ctermbg=0 cterm=inverse,bold
highlight IncSearch ctermfg=3 ctermbg=0 cterm=inverse
highlight SpecialKey ctermfg=7 ctermbg=NONE cterm=NONE
highlight NonText ctermfg=15 ctermbg=NONE cterm=NONE
highlight Underline ctermfg=9 ctermbg=NONE cterm=underline
highlight StatusLine ctermfg=15 ctermbg=0 cterm=NONE
highlight StatusLineNC ctermfg=8 ctermbg=0 cterm=NONE
highlight VertSplit ctermfg=15 ctermbg=NONE cterm=NONE
highlight Terminal ctermfg=15 ctermbg=NONE cterm=NONE
highlight EndOfBuffer ctermfg=15 ctermbg=NONE cterm=NONE
highlight WildMenu ctermfg=15 ctermbg=NONE cterm=bold
highlight ErrorMsg ctermfg=9 ctermbg=NONE cterm=bold
highlight MoreMsg ctermfg=15 ctermbg=NONE cterm=bold
highlight Question ctermfg=15 ctermbg=NONE cterm=bold
highlight WarningMsg ctermfg=9 ctermbg=NONE cterm=bold
highlight LineNr ctermfg=15 ctermbg=NONE cterm=NONE
highlight SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Folded ctermfg=15 ctermbg=0 cterm=NONE,bold
highlight FoldColumn ctermfg=15 ctermbg=0 cterm=NONE
highlight Cursor ctermfg=NONE ctermbg=NONE cterm=inverse
highlight vCursor ctermfg=NONE ctermbg=NONE cterm=inverse
highlight iCursor ctermfg=NONE ctermbg=NONE cterm=inverse
highlight lCursor ctermfg=NONE ctermbg=NONE cterm=inverse
highlight Special ctermfg=7 ctermbg=NONE cterm=NONE
highlight Comment ctermfg=7 ctermbg=NONE cterm=NONE
highlight Todo ctermfg=15 ctermbg=NONE cterm=bold,underline
highlight Error ctermfg=9 ctermbg=NONE cterm=bold

" }}}

" General Programming highlighting. {{{

highlight Statement ctermfg=9 ctermbg=NONE cterm=NONE
highlight Conditional ctermfg=13 ctermbg=NONE cterm=NONE
highlight Repeat ctermfg=13 ctermbg=NONE cterm=NONE
highlight Label ctermfg=13 ctermbg=NONE cterm=NONE
highlight Exception ctermfg=9 ctermbg=NONE cterm=NONE
highlight Operator ctermfg=15 ctermbg=NONE cterm=bold
highlight Keyword ctermfg=9 ctermbg=NONE cterm=NONE
highlight Identifier ctermfg=13 ctermbg=NONE cterm=NONE
highlight Function ctermfg=10 ctermbg=NONE cterm=NONE
highlight PreProc ctermfg=10 ctermbg=NONE cterm=NONE
highlight Include ctermfg=14 ctermbg=NONE cterm=NONE
highlight Define ctermfg=14 ctermbg=NONE cterm=NONE
highlight Macro ctermfg=14 ctermbg=NONE cterm=NONE
highlight PreCondit ctermfg=14 ctermbg=NONE cterm=NONE
highlight Constant ctermfg=13 ctermbg=NONE cterm=NONE
highlight Character ctermfg=13 ctermbg=NONE cterm=NONE
highlight String ctermfg=2 ctermbg=NONE cterm=NONE
highlight Boolean ctermfg=10 ctermbg=NONE cterm=NONE
highlight Number ctermfg=15 ctermbg=NONE cterm=NONE
highlight Float ctermfg=15 ctermbg=NONE cterm=NONE
highlight Type ctermfg=3 ctermbg=NONE cterm=bold
highlight StorageClass ctermfg=11 ctermbg=NONE cterm=NONE
highlight Structure ctermfg=10 ctermbg=NONE cterm=NONE
highlight Typedef ctermfg=10 ctermbg=NONE cterm=NONE

" }}}

" Versioning highlighting. {{{

highlight DiffDelete ctermfg=1 ctermbg=NONE cterm=NONE
highlight GitGutterDelete ctermfg=1 ctermbg=NONE cterm=NONE
highlight DiffAdd ctermfg=2 ctermbg=NONE cterm=NONE
highlight GitGutterAdd ctermfg=2 ctermbg=NONE cterm=NONE
highlight DiffChange ctermfg=4 ctermbg=NONE cterm=NONE
highlight GitGutterChange ctermfg=4 ctermbg=NONE cterm=NONE
highlight DiffText ctermfg=15 ctermbg=NONE cterm=NONE
highlight diffAdded ctermfg=2 ctermbg=NONE cterm=NONE
highlight diffRemoved ctermfg=1 ctermbg=NONE cterm=NONE
highlight diffChanged ctermfg=4 ctermbg=NONE cterm=NONE
highlight diffFile ctermfg=11 ctermbg=NONE cterm=NONE
highlight diffNewFile ctermfg=11 ctermbg=NONE cterm=NONE
highlight diffLine ctermfg=14 ctermbg=NONE cterm=NONE

" }}}

" Spell highlighting. {{{

if has("spell")
    highlight SpellCap ctermfg=11 ctermbg=NONE cterm=bold,italic
    highlight SpellBad ctermfg=9 ctermbg=NONE cterm=undercurl
    highlight SpellLocal ctermfg=14 ctermbg=NONE cterm=undercurl
    highlight SpellRare ctermfg=7 ctermbg=NONE cterm=undercurl
endif

" }}}

" Netrw highlighting. {{{

highlight netrwDir ctermfg=2 ctermbg=NONE cterm=NONE
highlight netrwClassify ctermfg=2 ctermbg=NONE cterm=NONE
highlight netrwLink ctermfg=13 ctermbg=NONE cterm=NONE
highlight netrwExe ctermfg=9 ctermbg=NONE cterm=NONE
highlight netrwComment ctermfg=7 ctermbg=NONE cterm=NONE
highlight netrwList ctermfg=14 ctermbg=NONE cterm=NONE
highlight netrwHelpCmd ctermfg=14 ctermbg=NONE cterm=NONE
highlight netrwCmdSep ctermfg=7 ctermbg=NONE cterm=NONE
highlight netrwVersion ctermfg=10 ctermbg=NONE cterm=NONE

" }}}

" Coc highlighting. {{{

highlight CocErrorSign ctermfg=1 ctermbg=NONE cterm=NONE
highlight CocWarningSign ctermfg=11 ctermbg=NONE cterm=NONE
highlight CocInfoSign ctermfg=13 ctermbg=NONE cterm=NONE
highlight CochighlightntSign ctermfg=14 ctermbg=NONE cterm=NONE
highlight CocErrorFloat ctermfg=0 ctermbg=15 cterm=NONE
highlight CocWarningFloat ctermfg=0 ctermbg=15 cterm=NONE
highlight CocInfoFloat ctermfg=0 ctermbg=15 cterm=NONE
highlight CochighlightntFloat ctermfg=0 ctermbg=15 cterm=NONE
highlight CocDiagnosticsError ctermfg=9 ctermbg=0 cterm=NONE
highlight CocDiagnosticsWarning ctermfg=11 ctermbg=0 cterm=NONE
highlight CocDiagnosticsInfo ctermfg=13 ctermbg=0 cterm=NONE
highlight CocDiagnosticshighlightnt ctermfg=14 ctermbg=0 cterm=NONE
highlight CocErrorhighlightghlight ctermfg=9 ctermbg=NONE cterm=undercurl
highlight CocWarninghighlightghlight ctermfg=11 ctermbg=NONE cterm=undercurl
highlight CocInfohighlightghlight ctermfg=13 ctermbg=NONE cterm=undercurl
highlight Cochighlightnthighlightghlight ctermfg=14 ctermbg=NONE cterm=undercurl

" }}}

" HTML highlighting. {{{

highlight htmlTag ctermfg=9 ctermbg=NONE cterm=NONE
highlight htmlEndTag ctermfg=9 ctermbg=NONE cterm=NONE
highlight htmlTagName ctermfg=15 ctermbg=NONE cterm=NONE
highlight htmlArg ctermfg=9 ctermbg=NONE cterm=NONE
highlight htmlScriptTag ctermfg=11 ctermbg=NONE cterm=bold
highlight htmlTagN ctermfg=15 ctermbg=NONE cterm=NONE
highlight htmlSpecialTagName ctermfg=7 ctermbg=NONE cterm=NONE
highlight htmlSpecialChar ctermfg=10 ctermbg=NONE cterm=NONE
highlight htmlLink ctermfg=9 ctermbg=NONE cterm=underline
highlight htmlBold ctermfg=15 ctermbg=NONE cterm=bold
highlight htmlItalic ctermfg=15 ctermbg=NONE cterm=italic
highlight htmlUnderline ctermfg=15 ctermbg=NONE cterm=underline
highlight htmlUnderlineItalic ctermfg=15 ctermbg=NONE cterm=underline,italic
highlight htmlBoldUnderline ctermfg=15 ctermbg=NONE cterm=bold,underline
highlight htmlBoldItalic ctermfg=15 ctermbg=NONE cterm=bold,italic
highlight htmlBoldUnderlineItalic ctermfg=15 ctermbg=NONE cterm=bold,underline,italic
highlight htmlUnderlineItalic ctermfg=15 ctermbg=NONE cterm=underline,italic

" }}}

" XML highlighting. {{{

highlight xmlTag ctermfg=9 ctermbg=NONE cterm=NONE
highlight xmlEndTag ctermfg=9 ctermbg=NONE cterm=NONE
highlight xmlTagName ctermfg=15 ctermbg=NONE cterm=NONE
highlight xmlEqual ctermfg=15 ctermbg=NONE cterm=NONE
highlight docbkKeyword ctermfg=14 ctermbg=NONE cterm=NONE
highlight xmlDocTypeDecl ctermfg=7 ctermbg=NONE cterm=NONE
highlight xmlDocTypeKeyword ctermfg=13 ctermbg=NONE cterm=NONE
highlight xmlCdataStart ctermfg=7 ctermbg=NONE cterm=NONE
highlight xmlCdataCdata ctermfg=13 ctermbg=NONE cterm=NONE
highlight dtdFunction ctermfg=7 ctermbg=NONE cterm=NONE
highlight dtdTagName ctermfg=13 ctermbg=NONE cterm=NONE
highlight xmlAttrib ctermfg=14 ctermbg=NONE cterm=NONE
highlight xmlProcessingDelim ctermfg=7 ctermbg=NONE cterm=NONE
highlight dtdParamEntityPunct ctermfg=7 ctermbg=NONE cterm=NONE
highlight xmlEntity ctermfg=11 ctermbg=NONE cterm=NONE
highlight xmlEntityPunct ctermfg=11 ctermbg=NONE cterm=NONE

" }}}

" Vim highlighting. {{{

highlight vimCommentTitle ctermfg=15 ctermbg=NONE cterm=bold
highlight vimNotation ctermfg=11 ctermbg=NONE cterm=NONE
highlight vimBracket ctermfg=11 ctermbg=NONE cterm=NONE
highlight vimMapModKey ctermfg=11 ctermbg=NONE cterm=NONE
highlight vimFuncSID ctermfg=15 ctermbg=NONE cterm=NONE
highlight vimSetSep ctermfg=15 ctermbg=NONE cterm=NONE
highlight vimContinue ctermfg=15 ctermbg=NONE cterm=NONE

" }}}

" C highlighting. {{{

highlight cOperator ctermfg=13 ctermbg=NONE cterm=NONE
highlight cStructure ctermfg=11 ctermbg=NONE cterm=NONE

" }}}

" Python highlighting. {{{

highlight pythonBuiltin ctermfg=11 ctermbg=NONE cterm=NONE
highlight pythonBuiltinObj ctermfg=11 ctermbg=NONE cterm=NONE
highlight pythonBuiltinFunc ctermfg=11 ctermbg=NONE cterm=NONE
highlight pythonFunction ctermfg=14 ctermbg=NONE cterm=NONE
highlight pythonDecorator ctermfg=9 ctermbg=NONE cterm=NONE
highlight pythonInclude ctermfg=13 ctermbg=NONE cterm=NONE
highlight pythonImport ctermfg=13 ctermbg=NONE cterm=NONE
highlight pythonRun ctermfg=13 ctermbg=NONE cterm=NONE
highlight pythonCoding ctermfg=13 ctermbg=NONE cterm=NONE
highlight pythonOperator ctermfg=15 ctermbg=NONE cterm=bold
highlight pythonException ctermfg=9 ctermbg=NONE cterm=NONE
highlight pythonException ctermfg=13 ctermbg=NONE cterm=NONE
highlight pythonBoolean ctermfg=10 ctermbg=NONE cterm=NONE
highlight pythonDot ctermfg=15 ctermbg=NONE cterm=NONE
highlight pythonConditional ctermfg=9 ctermbg=NONE cterm=NONE
highlight pythonRepeat ctermfg=9 ctermbg=NONE cterm=NONE
highlight pythonDottedName ctermfg=10 ctermbg=NONE cterm=NONE

" }}}

" CSS highlighting. {{{

highlight cssBraces ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssFunctionName ctermfg=11 ctermbg=NONE cterm=NONE
highlight cssIdentifier ctermfg=15 ctermbg=NONE cterm=NONE
highlight cssClassName ctermfg=15 ctermbg=NONE cterm=NONE
highlight cssColor ctermfg=14 ctermbg=NONE cterm=NONE
highlight cssSelectorOp ctermfg=14 ctermbg=NONE cterm=NONE
highlight cssSelectorOp2 ctermfg=14 ctermbg=NONE cterm=NONE
highlight cssImportant ctermfg=9 ctermbg=NONE cterm=NONE
highlight cssVendor ctermfg=15 ctermbg=NONE cterm=NONE
highlight cssTextProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssAnimationProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssUIProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssTransformProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssTransitionProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssBoxProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssFontDescriptiorProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssFlexibleBoxProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssBorderOutlineProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssBackgroundProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssMarginProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssListProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssTableProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssFontProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssPaddingProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssDimensionProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssDimensionProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssRenderProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssColorProp ctermfg=10 ctermbg=NONE cterm=NONE
highlight cssGeneratedContentProp ctermfg=10 ctermbg=NONE cterm=NONE

" }}}

" JavaScript highlighting. {{{

highlight javaScriptBraces ctermfg=7 ctermbg=NONE cterm=NONE
highlight javaScriptFunction ctermfg=14 ctermbg=NONE cterm=NONE
highlight javaScriptIdentifier ctermfg=2 ctermbg=NONE cterm=NONE
highlight javaScriptMember ctermfg=14 ctermbg=NONE cterm=NONE
highlight javaScriptNumber ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaScriptNull ctermfg=13 ctermbg=NONE cterm=NONE
highlight javaScriptParens ctermfg=7 ctermbg=NONE cterm=NONE
highlight javascriptImport ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptExport ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptClassKeyword ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptClassExtends ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptDefault ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptClassName ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptClassSuperName ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptGlobal ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptEndColons ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptFuncArg ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptGlobalMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptNodeGlobal ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptBOMWindowProp ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptArrayMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptArrayStaticMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptCacheMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDateMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptMathStaticMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptURLUtilsProp ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptBOMNavigatorProp ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDOMDocMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDOMDocMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDOMDocProp ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptBOMLocationMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptBOMWindowMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptStringMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptVariable ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptIdentifier ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptClassSuper ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptFuncKeyword ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptAsyncFunc ctermfg=14 ctermbg=NONE cterm=NONE
highlight javascriptClassStatic ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptOperator ctermfg=15 ctermbg=NONE cterm=bold
highlight javascriptForOperator ctermfg=9 ctermbg=NONE cterm=NONE
highlight javascriptYield ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptExceptions ctermfg=9 ctermbg=NONE cterm=NONE
highlight javascriptMessage ctermfg=9 ctermbg=NONE cterm=NONE
highlight javascriptTemplateSB ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptTemplateSubstitution ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptLabel ctermfg=9 ctermbg=NONE cterm=NONE
highlight javascriptObjectLabel ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptPropertyName ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptLogicSymbols ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptArrowFunc ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptDocParamName ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDocTags ctermfg=10 ctermbg=NONE cterm=NONE
highlight javascriptDocNotation ctermfg=10 ctermbg=NONE cterm=NONE
highlight javascriptDocParamType ctermfg=10 ctermbg=NONE cterm=NONE
highlight javascriptDocNamedParamType ctermfg=10 ctermbg=NONE cterm=NONE
highlight javascriptBrackets ctermfg=7 ctermbg=NONE cterm=NONE
highlight javascriptDOMElemAttrs ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDOMEventMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDOMNodeMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptDOMStorageMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptHeadersMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptHeadersMethod ctermfg=15 ctermbg=NONE cterm=NONE
highlight javascriptAsyncFuncKeyword ctermfg=13 ctermbg=NONE cterm=NONE
highlight javascriptAwaitFuncKeyword ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsClassKeyword ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsExtendsKeyword ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsExportDefault ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsTemplateBraces ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsGlobalNodeObjects ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsGlobalObjects ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsFunction ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsFuncParens ctermfg=7 ctermbg=NONE cterm=NONE
highlight jsParens ctermfg=7 ctermbg=NONE cterm=NONE
highlight jsNull ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsUndefined ctermfg=13 ctermbg=NONE cterm=NONE
highlight jsClassDefinition ctermfg=13 ctermbg=NONE cterm=NONE

" }}}

" TypeScript highlighting. {{{

highlight typeScriptReserved ctermfg=13 ctermbg=NONE cterm=NONE
highlight typeScriptLabel ctermfg=9 ctermbg=NONE cterm=NONE
highlight typeScriptFuncKeyword ctermfg=14 ctermbg=NONE cterm=NONE
highlight typeScriptIdentifier ctermfg=10 ctermbg=NONE cterm=NONE
highlight typeScriptBraces ctermfg=10 ctermbg=NONE cterm=NONE
highlight typeScriptEndColons ctermfg=7 ctermbg=NONE cterm=NONE
highlight typeScriptDOMObjects ctermfg=7 ctermbg=NONE cterm=NONE
highlight typeScriptAjaxMethods ctermfg=15 ctermbg=NONE cterm=NONE
highlight typeScriptScriptLogicSymbols ctermfg=15 ctermbg=NONE cterm=NONE
highlight typeScriptDocSeeTag ctermfg=7 ctermbg=NONE cterm=NONE
highlight typeScriptDocParam ctermfg=7 ctermbg=NONE cterm=NONE
highlight typeScriptDocTags ctermfg=10 ctermbg=NONE cterm=NONE
highlight typeScriptGlobalObjects ctermfg=15 ctermbg=NONE cterm=NONE
highlight typeScriptParens ctermfg=10 ctermbg=NONE cterm=NONE
highlight typeScriptOpSymbols ctermfg=7 ctermbg=NONE cterm=NONE
highlight typeScriptHtmlElemProperties ctermfg=15 ctermbg=NONE cterm=NONE
highlight typeScriptNull ctermfg=13 ctermbg=NONE cterm=NONE
highlight typeScriptInterpolationDelimiter ctermfg=10 ctermbg=NONE cterm=NONE

" }}}

" Java highlighting. {{{

highlight javaAnnotation ctermfg=12 ctermbg=NONE cterm=NONE
highlight javaDocTags ctermfg=10 ctermbg=NONE cterm=NONE
highlight javaCommentTitle ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaParen ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaParen1 ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaParen2 ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaParen3 ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaParen4 ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaParen5 ctermfg=15 ctermbg=NONE cterm=NONE
highlight javaOperator ctermfg=15 ctermbg=NONE cterm=bold
highlight javaVarArg ctermfg=10 ctermbg=NONE cterm=NONE

" }}}

" Markdown highlighting. {{{

highlight markdownItalic ctermfg=7 ctermbg=NONE cterm=italic
highlight markdownH1 ctermfg=15 ctermbg=NONE cterm=bold
highlight markdownH2 ctermfg=15 ctermbg=NONE cterm=bold
highlight markdownH3 ctermfg=15 ctermbg=NONE cterm=bold
highlight markdownH4 ctermfg=15 ctermbg=NONE cterm=bold
highlight markdownH5 ctermfg=15 ctermbg=NONE cterm=bold
highlight markdownH6 ctermfg=15 ctermbg=NONE cterm=bold
highlight markdownCode ctermfg=10 ctermbg=NONE cterm=NONE
highlight markdownCodeBlock ctermfg=2 ctermbg=NONE cterm=NONE
highlight markdownCodeDelimiter ctermfg=2 ctermbg=NONE cterm=NONE
highlight markdownBlockquote ctermfg=2 ctermbg=NONE cterm=NONE
highlight markdownListMarker ctermfg=2 ctermbg=NONE cterm=NONE
highlight markdownOrderedListMarker ctermfg=2 ctermbg=NONE cterm=NONE
highlight markdownRule ctermfg=7 ctermbg=NONE cterm=NONE
highlight markdownHeadingRule ctermfg=7 ctermbg=NONE cterm=NONE
highlight markdownUrlDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
highlight markdownLinkDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
highlight markdownTextDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
highlight markdownHeadingDelimiter ctermfg=7 ctermbg=NONE cterm=NONE
highlight markdownUrl ctermfg=9 ctermbg=NONE cterm=underline
highlight markdownTitleDelimiter ctermfg=13 ctermbg=NONE cterm=NONE
highlight markdownLinkText ctermfg=7 ctermbg=NONE cterm=underline
highlight markdownIdDeclaration ctermfg=7 ctermbg=NONE cterm=underline

" }}}

" JSON highlighting. {{{

highlight jsonKeyword ctermfg=15 ctermbg=NONE cterm=NONE
highlight jsonQuote ctermfg=10 ctermbg=NONE cterm=NONE
highlight jsonBraces ctermfg=10 ctermbg=NONE cterm=NONE
highlight jsonString ctermfg=2 ctermbg=NONE cterm=NONE
