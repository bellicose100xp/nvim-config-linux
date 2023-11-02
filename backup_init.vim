" Map leader key to Space key
let mapleader = " "

set relativenumber number
set clipboard=unnamed
highlight LineNr ctermfg=darkgrey

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
Plug 'easymotion/vim-easymotion'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Highlight on yank
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup="IncSearch", timeout=200 }
augroup END

" Custom keybindigs
nnoremap J 10jzz
nnoremap K 10kzz
nnoremap H 10h
nnoremap L 10l
nnoremap <leader>j J

" Adds space above and below while keeping cursor on the current line
nnoremap <leader>o o<Esc>k
nnoremap <leader>i O<Esc>j

" Visual block mode remapping
noremap <leader>v <c-q>

" Move Lines Up and Down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Visual Mode Key Remapping
vnoremap > >gv
vnoremap < <gv

" Set Cursor Blinking in Normal and Insert Mode
" n-v-c: Normal Modes -> block: block cursor
" i-ci-ve: Insert Modes -> ver25: line-cursor
" a: All Modes -> Set Blinking Rate
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250


