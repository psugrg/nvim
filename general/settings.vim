" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighting
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes pop-up menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages (COC recommends 2 lines)
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Absolute line numbers
" set relativenumber                    " Relative line numbers 
set cursorline                        " Enable highlighting of the current line
hi CursorLine ctermbg=0 cterm=NONE
set background=dark                     " tell Vim what the background color looks like
set showtabline=1                       " Show tabs only when there's more than one active tab
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by COC
set nowritebackup                       " This is recommended by COC
set updatetime=200                      " Faster completion
set timeoutlen=200                      " By default timeout length is 1000 ms
set formatoptions-=r                    " Stop newline continuation of comments
set clipboard=unnamedplus               " Copy paste between Vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory

" Truecolor support
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Disable line numbers in terminal
autocmd TermOpen * set nonu

" Change the default Bad Spelling highlight 
hi clear SpellBad
hi SpellBad ctermfg=131 ctermbg=NONE cterm=underline

" Change the default line numbers color
hi LineNr ctermfg=DarkGrey ctermbg=NONE cterm=italic

" Change the default Vertical Split line settings
hi VertSplit ctermfg=0 ctermbg=16

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
