" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
"let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle' , 'comment' ]
"let g:which_key_map['e'] = [ ':CocCommand explorer'      , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':RnvimrToggle'              , 'ranger' ]
let g:which_key_map['1'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['rg'] = [ ':Rg'                       , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map[' '] = [ ':NERDTreeToggle'            , 'nerd tree']
let g:which_key_map['?'] = [ ':e $HOME/.config/nvim/cheat-sheet.md'            , 'cheat sheet']
"let g:which_key_map['z'] = [ 'Goyo'                      , 'zen' ]

" Text mod
let g:which_key_map['2'] = {
      \ 'name' : '+Presentation' ,
      \ 'T' : [':.!toilet -w 200 -f standard'       , 'Title big'],
      \ 't' : [':.!toilet -w 200 -f small'          , 'Title small'],
      \ 'b' : [':.!toilet -w 200 -f term -F border' , 'Box'],
      \ }

" COC
let g:which_key_map.c = {
      \ 'name' : '+COC' ,
      \ 'd' : ['<Plug>(coc-definition)'       , 'Go to definition'],
      \ 't' : ['<Plug>(coc-type-definition)'  , 'Go to type definition'],
      \ 'i' : ['<Plug>(coc-implementation)'   , 'Go to implementation'],
      \ 'r' : ['<Plug>(coc-reference)'        , 'Go to reference'],
      \ 'c' : ['CocStart'             , 'Start COC service'],
      \ 'C' : ['CocStop'              , 'Stop COC service'],
      \ }

" Development
let g:which_key_map['d'] = {
      \ 'name' : '+development' ,
      \ 'i' : [':CMakeInfo'                     , 'Info'],
      \ 'c' : [':CMake'                         , 'Configure project'],
      \ 'Q' : [':CMakeReset'                    , 'Reset project'],
      \ 'C' : [':CMakeClean'                    , 'Clean project'],
      \ 'R' : [':CMakeSelectBuildType Release'  , 'Build type Release'],
      \ 'D' : [':CMakeSelectBuildType Debug'    , 'Build type Debug'],
      \ 'b' : [':CMakeBuild'                    , 'Build project'],
      \ 'f' : [':FZFCMakeSelectTarget'          , 'FXF Select target'],
      \ 'j' : [':cn'                            , 'Nex Error/Warning'],
      \ 'k' : [':cp'                            , 'Previous Error/Warning'],
      \ }

" Debug
let g:which_key_map['D'] = {
      \ 'name' : '+debug' ,
      \ 'D' : [':call vimspector#Launch()'      , 'Start debug session'],
      \ 'd' : [':call vimspector#Reset()'       , 'Stop debug session'],
      \ 'r' : [':VimspectorReset'               , 'Reset'],
      \ 'e' : [':VimspectorEval'                , 'Evaluate'],
      \ 'w' : [':VimspectorWatch'               , 'Watch'],
      \ 'o' : [':VimspectorShowOutput'          , 'Show output'],
      \ }

" Spell check
let g:which_key_map['sc'] = {
      \ 'name' : '+spell check' ,
      \ 'e' : [':set spell spellang=en_us'  , 'enable EN_US'],
      \ 'd' : [':set nospell'               , 'disable'],
      \ 'a' : ['zg'                         , 'add word to dictionary'],
      \ 'n' : [']s'                         , 'next misspelled word'],
      \ 'N' : ['[s'                         , 'previous misspelled word'],
      \ }

" Terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 't' : [':FloatermNew --wintype=normal --height=6 $SHELL'   , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'lazygit'],
      \ 'p' : [':FloatermNew python3'                           , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ ' ' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew bottom'                            , 'bottom system monitor'],
      \ }

" Configuration
let g:which_key_map.C = {
      \ 'name' : '+configuration' ,
      \ 'v' : [':e $HOME/.config/nvim/'                           , 'nvim configuration folder'],
      \ 'c' : [':e $HOME/.config/'                                , '.config folder'],
      \ 's' : [':AirlineToggle | source $MYVIMRC | AirlineToggle' , 'source configuration'],
      \ 'p' : [':PlugInstall'                                     , 'install plugins'],
      \}

" Windows
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>v'     , 'vartical split'],
      \ 'W' : ['<C-W>s'     , 'horisontal split'],
      \ 'h' : ['<C-W>h'     , 'left'],
      \ 'j' : ['<C-W>j'     , 'down'],
      \ 'k' : ['<C-W>k'     , 'up'],
      \ 'l' : ['<C-W>l'     , 'right'],
      \ 'd' : [':wq'        , 'close']
      \}

" Buffers
let g:which_key_map.b = {
      \ 'name' : '+buffers' ,
      \ 'n' : [':bnext'     , 'next'],
      \ 'p' : [':bprev'     , 'previous'],
      \ 'd' : [':bdelete'   , 'delete'],
      \ 'b' : [':enew'      , 'new buffer']
      \}

" Tabs
let g:which_key_map['T'] = {
      \ 'name' : '+tabs' ,
      \ 'n' : [':tabnext'       , 'next'],
      \ 'p' : [':tabprevious'   , 'previous'],
      \ 'd' : [':tabclose'      , 'delete'],
      \ 'm' : ['<C-W>T'         , 'move window (split) to new tab'],
      \ 't' : [':tabnew'        , 'new tab']
      \}

" Git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'g' : [':FloatermNew lazygit'                           , 'lazygit'],
      \ 'j' : ['<plug>(signify-next-hunk)'       , 'next'],
      \ 'k' : ['<plug>(signify-prev-hunk)'       , 'previous'],
      \ 'J' : ['9999<leader>gJ'                  , '9999<leader>gJ'],
      \ 'K' : ['9999<leader>gk'                  , '9999<leader>gK']
      \}

" Search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
