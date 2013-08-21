" Start package manager
call pathogen#incubate()
call pathogen#helptags()

map <C-n>     :NERDTreeToggle<CR>
map <C-h> :NERDTreeFind<cr>

let NERDTreeShowHidden=1

set number
set lazyredraw
set ttyfast

filetype plugin on
filetype indent on

autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType make setlocal noexpandtab|setlocal tabstop=8|setlocal shiftwidth=8|set softtabstop=8

let _curfile = expand("%:t")
if _curfile =~ "Makefile*" || _curfile =~ "makefile" || _curfile =~ "Make.*"
  set noexpandtab
endif

autocmd FileType python set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m

let g:pylint_show_rate = 0

set incsearch

set autoindent

set hidden

set tw=90

highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <leader>n :cnext<CR>
nmap <leader>p :cprev<CR>

function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

let g:ctrlp_root_markers = ['.git']
let g:ctrlp_user_command = 'find %s -type f'
