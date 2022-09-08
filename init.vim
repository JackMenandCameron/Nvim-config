
let mapleader = ";"
source $HOME/.config/nvim/vim-plug/plugins.vim
set mouse=a


set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Allow for both a lua and vim config
lua require('config')

" Allow for COC commands
source ~/.config/nvim/coc.vim

" Coments
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Color - Commented out on mac
" lua require('colorbuddy').colorscheme('gruvbuddy')

" FZF File
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg 
nnoremap <leader>l :Lines<CR>
nnoremap <leader>L :BLines<CR>

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
" map <Leader>l <Plug>(easymotion-bd-jk)
" nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Fugitive
map <Leader>c :Commits<CR>

" Diffview
map <Leader>do :DiffviewOpen<CR>
map <Leader>dc :DiffviewClose<CR>
map <Leader>dt :DiffviewToggleFiles<CR>

" Spell check
map <Leader>s :setlocal spell<CR>
map <Leader>n :setlocal nospell<CR>

" Surround
" lua require"surround".setup{}

" Make help open in its own tab'
cabbrev h tab help
cabbrev G tab G

" Have terminal open with T
map <Leader>T :below new<CR>:terminal<CR>:resize 10<CR>

" Go fmt the current file
map <Leader>gf :! go fmt %<CR>

" Coc format
map <Leader>F :CocCommand editor.action.formatDocument<CR>

" Focus on one window by creating temp tab
map <Leader>z :tabe %<CR>

" Save Folds
map <Leader>[ :mkview<CR>
" Load Folds
map <Leader>] :loadview<CR>

