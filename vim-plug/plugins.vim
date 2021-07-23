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
    " Commenting `gc` for commenting
    Plug 'tpope/vim-commentary'
    " Surrounding
    Plug 'tpope/vim-surround'
    " Git stuff
    Plug 'tpope/vim-fugitive'
    " Fuzy Finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Pretty Colors
    Plug 'tjdevries/colorbuddy.vim'
    Plug 'tjdevries/gruvbuddy.nvim'
    " Airline
    Plug 'bling/vim-airline'
    " Jumping around easier
    Plug 'easymotion/vim-easymotion'
    " Plug
    Plug 'sindrets/diffview.nvim'

call plug#end()
