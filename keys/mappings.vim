" Better nav for omnicomplete.
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>") 

" Use alt + hjkl to resize windows.
" Linux
"nnoremap <M-j>    :resize -2<CR>
"nnoremap <M-k>    :resize +2<CR>
"nnoremap <M-h>    :vertical resize -2<CR>
"nnoremap <M-l>    :vertical resize +2<CR>
" MacOS (depends on keyboard bindings)
nnoremap ∆      :resize -2<CR>
nnoremap ˚      :resize +2<CR>
nnoremap ˙      :vertical resize -2<CR>
nnoremap ¬      :vertical resize +2<CR>

" TAB in general mode will move to text buffer.
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back.
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definiton)
nmap <leader>gy <Plug>(coc-type-definiton)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-reference)

" Better window navigation.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
