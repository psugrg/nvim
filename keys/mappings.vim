" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
" We can't use the same mapping in terminal window
" since these key are also used for navigation.
" We'll use ESC instead
tnoremap <Esc> <C-\><C-n>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" ALT-TAB - Switch tabs forward
nnoremap <A-TAB> :tabnext<CR>
" ALT-q - Switch tabs backwards
" nnoremap <A-q> :tabprevious<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Close current buffer 
nnoremap q :bd<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :q<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap <S-TAB> <gv
vnoremap <TAB> >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Close a window with CTRL-C
noremap <C-c> :wq<CR>

" Better comments with CTRL-/
" Note: for some reason vim registers CTRL+/ as CTRL+_ hence <C-_> in
" configuration
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>
