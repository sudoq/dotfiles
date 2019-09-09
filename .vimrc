"Pathogen Plugin
"execute pathogen#infect()

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

"Visual
syntax on
set ruler
set number
"colorscheme molokai
"colorscheme railscasts
"colorscheme onedark
"colorscheme ayu
colorscheme horizon
filetype plugin indent on

set gfn=Monospace\ 9
set autoindent
set number
set tabstop=2
set shiftwidth=2
set noexpandtab
"set expandtab "soft tab

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set nobackup
set noswapfile

set nohlsearch

set backspace=indent,eol,start
set showcmd

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set splitbelow
set splitright

"Add command to change working directory to current file location
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Break the habit of using arrowkeys for navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Ignore arrowkeys in insert mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

"Break the scroll on mousepad
noremap <ScrollWheelUp>      <nop>
noremap <S-ScrollWheelUp>    <nop>
noremap <C-ScrollWheelUp>    <nop>
noremap <ScrollWheelDown>    <nop>
noremap <S-ScrollWheelDown>  <nop>
noremap <C-ScrollWheelDown>  <nop>
noremap <ScrollWheelLeft>    <nop>
noremap <S-ScrollWheelLeft>  <nop>
noremap <C-ScrollWheelLeft>  <nop>
noremap <ScrollWheelRight>   <nop>
noremap <S-ScrollWheelRight> <nop>
noremap <C-ScrollWheelRight> <nop>

"Break the habit of using hjkl for slow navigation, just for practice to.
"Shall be in comment in the long run when the good habit has set.
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>

"Terminal colors
set t_Co=256

"Tab list pipes
"set listchars=tab:\|-
"set list

"80 char alert
"if exists('+colorcolumn')
"	set colorcolumn=80
"else
"	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif

"This solution for the 80 char problem highlights any text over 80 char.
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"Highlight cursor line
set cul
hi CursorLine term=none cterm=none ctermbg=236

"GLSL Syntax highlighting
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl,*.fs,*.vs setf glsl

"Workaround to enable :Explore as :E and not :Ex
let g:loaded_logipat = 1

"Font fix for windows
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monospace\ 9
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"Disable beeping sound
set noeb novb t_vb=

"Dash keybindings
let mapleader=" "
nmap <silent> <leader>d <Plug>DashSearch

"No freaking bells!
set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

let g:pymode_indent = 0

if exists("g:gui_oni")
	colorscheme onedark
endif

set termguicolors

"Local file extention changes
autocmd FileType Jenkinsfile setlocal shiftwidth=4 tabstop=4 expandtab
au BufRead,BufNewFile Jenkinsfile setfiletype groovy
autocmd FileType groovy setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab
