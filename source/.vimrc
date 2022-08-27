set number
set	relativenumber
syntax on
set autoindent
set smartindent
set mouse=a
set cursorline
set ruler

colorscheme sublimemonokai

"Ctr + C: abrir Lex (Explorador de Carpetas)"
inoremap <C-c> <Esc>:Lex<cr>:vertical resize 35<cr>
nnoremap <C-c> <Esc>:Lex<cr>:vertical resize 35<cr>

"Ctr + J: mueve lineas una línea hacia abajo"
"Ctr + K: mueve lineas una línea hacia arriba"
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==

"Ctr + D: comenta con //"
"Ctr + A: quita el comentario"
inoremap <C-d> <Esc>:norm 0i//<CR>
inoremap <C-a> <Esc>:norm 0xx<CR>
vnoremap <C-d> :'<,'>:norm i//<CR>
vnoremap <C-a> :'<,'>:norm xx<CR>
nnoremap <C-d> :norm 0i//<CR>
nnoremap <C-a> :norm 0xx<CR>
