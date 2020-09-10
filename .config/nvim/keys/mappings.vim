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
