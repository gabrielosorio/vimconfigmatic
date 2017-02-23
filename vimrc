execute pathogen#infect()
syntax on
filetype indent plugin on

" Highlight Trailing Spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Map colon to semicolon for Mac keyboards
:nmap ; :

" Open NERDTree with leader+n
map <Leader>n :NERDTreeToggle<CR>

" Color Scheme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'
