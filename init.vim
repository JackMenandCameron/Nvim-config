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

" EasyMotion
" <Leader>/{char} to move to {char}
map  <Leader>/ <Plug>(easymotion-overwin-f2)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

