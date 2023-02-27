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
    " Plug 'tpope/vim-surround'
    " Plug 'blackCauldron7/surround.nvim'
    " Git stuff
    Plug 'tpope/vim-fugitive'
    " Fuzy Finder Look at repository for more install info (bat)
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Pretty Colors
    Plug 'tjdevries/colorbuddy.vim'
    Plug 'tjdevries/gruvbuddy.nvim'
    " Airline
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Jumping around easier
    Plug 'easymotion/vim-easymotion'
    " Plug
    Plug 'nvim-lua/plenary.nvim'
    " Diff View
    Plug 'sindrets/diffview.nvim'
    "Conquer of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Treesitter (has some in lua too)
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Rename tabs
    Plug 'gcmt/taboo.vim'
    " Zen Mode (has some in lua too)
    Plug 'folke/zen-mode.nvim'
    " Outline for code
    Plug 'liuchengxu/vista.vim'
    " Nicer Notifications
    Plug 'rcarriga/nvim-notify'
    " Help with the menu
    Plug 'gelguy/wilder.nvim'
    " Nordic theme
    Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
    " Database helpers
    Plug 'tpope/vim-dadbod'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'kristijanhusak/vim-dadbod-ui'
    Plug 'kristijanhusak/vim-dadbod-completion'
    " LSP 
    Plug 'neovim/nvim-lspconfig'
    " Outline
    Plug 'simrat39/symbols-outline.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    " Golang
    Plug 'ray-x/go.nvim'
    Plug 'ray-x/guihua.lua'
    " Debugger
    Plug 'mfussenegger/nvim-dap'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'folke/neodev.nvim'
    Plug 'theHamsta/nvim-dap-virtual-text'



call plug#end()
