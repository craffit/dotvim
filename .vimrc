" Start package manager
call pathogen#incubate()
call pathogen#helptags()

map <C-n>     :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

set tabstop=2
set shiftwidth=2
set expandtab

set number

filetype plugin on
filetype indent on

set incsearch

set autoindent

highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
