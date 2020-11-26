" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Which Key - a port of emacs-which-key
    Plug 'liuchengxu/vim-which-key'
    " Ranger file manager
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Git support
    Plug 'mhinz/vim-signify'
    " Project management
    Plug 'mhinz/vim-startify'
    " Searching with FZF (FuzzyFind)
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Better comments
    Plug 'tpope/vim-commentary'
    " Quickscope - an always-on highlight for an unique characrer
    Plug 'unblevable/quick-scope'
    " Floating terminal window
    Plug 'voldikss/vim-floaterm'

    call plug#end()
