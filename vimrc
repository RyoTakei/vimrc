set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Nerd
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'

" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tags
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'szw/vim-tags'

" Finding
Plugin 'Shougo/unite.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Snips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Trash/not really used plugins
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" Buffers
Plugin 'rbgrouleff/bclose.vim'
Plugin 'jlanzarotta/bufexplorer'

" Motion
Plugin 'easymotion/vim-easymotion'
" Plugin 'fcpg/vim-focusmotion'

" Text arranging/formatting
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dhruvasagar/vim-table-mode'

" Syntax checking
Plugin 'scrooloose/syntastic'
Plugin 'roktas/syntastic-more'
Plugin 'myint/syntastic-extras'
Plugin 'metakirby5/codi.vim'

" Language-specific syntax checking
Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'sudar/vim-arduino-syntax'
" Plugin 'xuhdev/vim-latex-live-preview'


" Autocomplete/YCM
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" Colors/highlighting
" Plugin 'godlygeek/csapprox'
Plugin 'jeaye/color_coded'
Plugin 'ap/vim-css-color'

" Visuals/visual helpers
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'mhinz/vim-startify'

" Git
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Backend/utilities
Plugin 'tpope/vim-dispatch'
Plugin 'kana/vim-metarw'
Plugin 'mattn/vim-metarw-gdrive'
Plugin 'mattn/webapi-vim'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-repeat'
Plugin 'thinca/vim-quickrun'

" Other
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'sjl/gundo.vim'
" Plugin 'bling/vim-bufferline'



call vundle#end()
filetype plugin indent on



syntax enable
set number
set ts=4
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

set laststatus=2

set timeoutlen=1000 ttimeoutlen=0
set updatetime=250

colorscheme gruvbox 
set background=dark


set backspace=2

set wildmenu
set lazyredraw



syntax enable

autocmd Filetype text setlocal spell spelllang=en_us

" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
"" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
"" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
"" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0
let g:pymode_rope_complete_on_dot = 0
"
set foldlevelstart=10
set nofoldenable

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

let g:SuperTabDefaultCompletionType = 'context'
let g:EclimCompletionMethod = 'omnifunc'


set scrolloff=5

au BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand(""))
au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand(""))

let g:ycm_confirm_extra_conf = 0

let g:color_coded_enabled = 0
let g:color_coded_filetypes = ['c', 'cpp', 'objc']


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:easytags_async = 1
let g:easytags_by_filetype = '/home/solomon/'


" NERDComment
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Syntastic
let g:syntastic_python_checkers = ['pyflakes_with_warnings']
let g:syntastic_gitcommit_checkers = ['language_check']
let g:syntastic_svn_checkers = ['language_check']
let g:syntastic_make_checkers = ['gnumake']

" IndentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 0



autocmd CompleteDone * pclose

let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

"  swap files
"
"" swap files (.swp) in a common location
"" // means use the file's full path
"set dir=~/.vim/_swap//
"
"" backup files (~) in a common location if possible
"set backup
"set backupdir=~/.vim/_backup/,~/tmp,.
"
"" turn on undo files, put them in a common location
"set undofile
"set undodir=~/.vim/_undo/

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino


let g:airline_powerline_fonts = 1 

let g:vim_tags_auto_generate = 1
let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_use_vim_dispatch = 0
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore']
let g:vim_tags_ignore_file_comment_pattern = '^[#"]'
let g:vim_tags_directories = [".git", ".hg", ".svn", ".bzr", "_darcs", "CVS"]
let g:vim_tags_main_file = 'tags'
let g:vim_tags_extension = '.tags'
let g:vim_tags_cache_dir = expand($HOME)

let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:airline_theme = 'powerlineish'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

let g:livepreview_previewer = 'evince'


set fillchars=vert:│
noremap Y y$


" let mapleader=","
let mapleader = "\<Space>"

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


nnoremap <Leader>w :w<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P


map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nmap s <Plug>(easymotion-overwin-f2)

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap ; :

nnoremap j gj
nnoremap k gk

nnoremap <Enter> o<Esc>
nnoremap <S-Enter> O<Esc>

command WQ wq
command Wq wq
command W w
command Q q

command Y w | !go run %
command PY w | !/usr/bin/env python3 %

nmap <F8> :TagbarToggle<CR>
map <F2> :NERDTreeToggle<CR>

let g:UltiSnipsExpandTrigger="<1>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrugger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:pymode_breakpoint_bind = '<leader>b'

nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>

nnoremap ZZ :call syntastic_extras#quit_hook()<cr>

nnoremap B ^
nnoremap E $

nnoremap gV `[v`]
nnoremap <leader>u :GundoToggle<CR>

nnoremap <leader>a :Ag<CR>
nnoremap <leader>f :FZF<CR>

" nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nnoremap <C-S-Tab> :tabprevious<CR>
nnoremap <C-Tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
inoremap <C-Tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>
nnoremap <A-F1> 1gt
nnoremap <A-F2> 2gt
nnoremap <A-F3> 3gt
nnoremap <A-F4> 4gt
nnoremap <A-F5> 5gt
nnoremap <A-F6> 6gt
nnoremap <A-F7> 7gt
nnoremap <A-F8> 8gt
nnoremap <A-F9> 9gt
nnoremap <A-F0> 10gt
nnoremap H gT
nnoremap L gt



nnoremap <leader>/ /
