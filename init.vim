let mapleader = ";"
source $HOME/.config/nvim/vim-plug/plugins.vim
set mouse=a


set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


" Coments
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Color - Commented out on mac
lua require('colorbuddy').colorscheme('gruvbuddy')

" FZF File
nnoremap <leader>f :Files<CR>

" NerdTree
nnoremap <leader>t :NERDTreeToggle<CR>

" Marks
nnoremap <leader>m :Marks<CR>
