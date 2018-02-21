""""""" Plugin management stuff """""""
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/vimproc.vim', { 'do': 'make' }
" Plugin 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plugin 'Valloric/YouCompleteMe'

" Custom plugins...
" EasyMotion - Allows <leader><leader>(b|e) to jump to (b)eginning or (end)
" of words.
Plugin 'easymotion/vim-easymotion'
" Ctrl-P - Fuzzy file search
Plugin 'kien/ctrlp.vim'
" Neomake build tool (mapped below to <c-b>)
Plugin 'benekastah/neomake'
" Autocomplete for python
Plugin 'davidhalter/jedi-vim'
" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'
" LaTeX editing
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
" Tab completion
Plugin 'ervandew/supertab'
" Code Folding
Plugin 'tmhedberg/SimpylFold'
" Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'
" Syntax Checking/Highlighting
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
" Color Schemes
Plugin 'dracula/vim'
Plugin 'isobit/vim-darcula-colors'
Plugin 'jnurmine/Zenburn'
Plugin 'Railscasts-Theme-GUIand256color'
" File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Git Integration
Plugin 'tpope/vim-fugitive'
" Vim-airline Themes
Plugin 'vim-airline/vim-airline-themes'
" Tagbar
Plugin 'majutsushi/tagbar'
" Python Mode
" Plugin 'klen/python-mode'
" Vim Markdown
Plugin 'tpope/vim-markdown'
Plugin 'jmcantrell/vim-virtualenv'
" Auto-close bracket...
Plugin 'Raimondi/delimitMate'

Plugin 'elixir-lang/vim-elixir'
Plugin 'ap/vim-buftabline'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'rhysd/conflict-marker.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/sessionman.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'joonty/vdebug'
Plugin 'Shougo/vimshell.vim'
Plugin 'powerline/fonts'

" After all plugins...
call vundle#end()
filetype plugin indent on

""""""" Jedi-VIM """""""
" Don't mess up undo history
let g:jedi#show_call_signatures = "0"


""""""" SuperTab configuration """""""
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
function! Completefunc(findstart, base)
    return "\<c-x>\<c-p>"
endfunction

"call SuperTabChain(Completefunc, '<c-n>')

"let g:SuperTabCompletionContexts = ['g:ContextText2']


""""""" General coding stuff """""""
set list
set listchars=tab:>-,trail:-,extends:#,nbsp:-
set modeline
set tw=78
set tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Highlight 80th column
set colorcolumn=79
" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500
" Disable mouse click to go to position
set mouse-=a
" Don't let autocomplete affect usual typing habits
set completeopt=menuone,preview,noinsert
" Let vim-gitgutter do its thing on large files
let g:gitgutter_max_signs=10000

let g:airline_powerline_fonts = 1
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" If your terminal's background is white (light theme), uncomment the following
" to make EasyMotion's cues much easier to read.
" hi link EasyMotionTarget String
" hi link EasyMotionShade Comment
" hi link EasyMotionTarget2First String
" hi link EasyMotionTarget2Second Statement


""""""" Python stuff """""""
syntax enable
set number showmatch
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
let python_highlight_all = 1

"""" Color Schemes """"""
colorscheme onedark

""""""" Keybindings """""""
" Set up leaders
let mapleader=","
let maplocalleader="\\"

" Neomake and other build commands (ctrl-b)
nnoremap <C-b> :w<cr>:Neomake<cr>
"split navigations
" Ctrl-j move to the split below
" Ctrl-k move to the split above
" Ctrl-l move to the split to the right
" Ctrl-h move to the split to the left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

autocmd BufNewFile,BufRead *.tex,*.bib noremap <buffer> <C-b> :w<cr>:new<bar>r !make<cr>:setlocal buftype=nofile<cr>:setlocal bufhidden=hide<cr>:setlocal noswapfile<cr>
autocmd BufNewFile,BufRead *.tex,*.bib imap <buffer> <C-b> <Esc><C-b>

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Open NERDTree automatically when nvim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" UTF8 Support
set encoding=utf-8

" Hide .pyc when browsing files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" ------------------- NeoVim ------------------- "
syntax enable

let g:rehash256 = 1
let g:onedark_termcolors=256

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

set background=dark

"colorscheme solarized
"colorscheme molokai
"colorscheme ir_black
"colorscheme peaksea
"colorscheme base16-railscasts
"colorscheme railscasts
"colorscheme darcula
"colorscheme dracula
colorscheme onedark

" With tmux (show fullpath filename) tab
" references:
" http://stackoverflow.com/questions/15123477/tmux-tabs-with-name-of-file-open-in-vim
" -----------------------------------------
" autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))
autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
