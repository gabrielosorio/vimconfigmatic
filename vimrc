execute pathogen#infect()
syntax on
filetype indent plugin on

set nu " Line numbers on
set cf " Enable error files & error jumping
set clipboard+=unnamed " Yanks go on clipboard instead
set history=256 " Number of things to remember in history
set autowrite " Writes on make/shell commands
set ruler " Ruler on
set nowrap " Disable line wrapping
set timeoutlen=250 "Time to wait after ESC default causes an annoying delay
set mouse=a " Enable scrolling with mouse

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

" Simplify tidying up
set list                     " show invisible characters
set listchars=tab:>·,trail:· " but only show tabs and trailing whitespace

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red

" Spaces to tabs
set shiftwidth=2 " Tabs under smart indent
set smarttab

set hlsearch " Enable highlight on search
set incsearch

" Open NERDTree with leader+n
map <Leader>n :NERDTreeToggle<CR>

" NERDTree setting defaults to work around http://github.com/scrooloose/nerdtree/issues/489
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

" Use CtrlP as a fuzzy file searcher
" Open in Most Recently Used mode by default
let g:ctrlp_cmd = 'CtrlPMRU'

" Color Scheme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'

" Ctrl-P Fuzzy Navigation
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Change focus in windows with Ctrl + <direction>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
