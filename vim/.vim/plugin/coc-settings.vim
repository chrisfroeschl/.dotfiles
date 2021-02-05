" File: coc-settings.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Fri 05 Feb 2021 08:02:41 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" Plugin settings for coc related extensions.

" Extensions used by with coc. {{{

let g:coc_global_extensions = [
            \'coc-json',
            \'coc-prettier',
            \'coc-eslint',
            \'coc-emmet',
            \'coc-tsserver',
            \'coc-markdownlint',
            \'coc-java',
            \'coc-html',
            \'coc-css',
            \'coc-snippets',
            \'coc-angular',
            \'coc-dictionary',
            \]

" }}}

" Coc mappings. {{{

" Goto code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" }}}

" Coc autocmds. {{{

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup FORMATEXPR
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" }}}
