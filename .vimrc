syntax on
set t_Co=256
colorscheme soupleax

set numberwidth=4
set relativenumber
set nocompatible
set bs=indent,eol,start
set viminfo='20,\"50
set history=50
set ruler
set noswapfile
set nobackup
set pastetoggle=<F3>
set tabpagemax=100
set showtabline=2
set shiftwidth=4
set tabstop=4
set nohidden
set scrolloff=7
let &guicursor = &guicursor . ",a:blink0"

filetype plugin on
filetype on		
filetype plugin indent on	

"zM zR zA za zm zr
set foldmethod=indent
set foldnestmax=99
set nofoldenable
set foldlevel=1

set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.svn,*.git

set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch

mapclear

nnoremap / /\v
vnoremap / /\v

nnoremap <leader>L :set invrelativenumber<CR>
nnoremap <leader>N :set number<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

nnoremap <leader>v <c-w>v<c-w>l
nnoremap <leader>s <c-w>s<c-w>j

nnoremap <leader><space> :noh<cr>

nnoremap , %
vnoremap , %

nnoremap <DOWN> gj
nnoremap <UP> gk

nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tq :tabdo q<CR>
nnoremap <leader>tw :tabdo w<CR>

" open file in new tab
nnoremap gn <C-w>gf

" format text
vnoremap Q gq
nnoremap Q gqap

" sudo save
cnoremap <leader>save w !sudo tee % >/dev/null<CR>

" dos2unix
nnoremap <leader>M :%s/<C-V><C-M>//g<CR>

" open current buffer in new tab
nnoremap <leader>O :tabedit %<cr>

" chdir to file
nnoremap <leader>cd : cd %:p:h<CR>:pwd<CR>

nnoremap - <home>
nnoremap = <end>
vnoremap - <home>
vnoremap = <end>
nnoremap ; :

" back button
inoremap <c-o> <c-x><c-o>

" pathogen autoload from budle && suppress errors
silent! call pathogen#infect()

let b:ARGZ = ""
nnoremap <leader>S :SetArg
command! -nargs=1 SetArg call s:SetARGZ(<f-args>)
function! s:SetARGZ(param)
	let b:ARGZ = a:param
endfunction
nnoremap <leader>C :echo b:ARGZ<CR>

nnoremap <F4> :call Run() <CR>
func! Run()
	let $ARGZ = b:ARGZ
	!chmod +x %:p ; %:p $ARGZ
endfunc

" GPG
let g:GPGExecutable = "gpg"
let g:GPGUseAgent = 0
let g:GPGPreferSymmetric = 0
let g:GPGPreferArmor = 1 
let g:GPGPreferSign = 1
let g:GPGDefaultRecipients = [ "local" ]

" TagBar
nnoremap <leader>Tb :TagbarToggle<CR>

" Ack
nnoremap <leader>a <Esc>:Ack! -a 

" Gundo
nnoremap <leader>G :GundoToggle<CR>

" NerdCommentor
" cs cc cu

" Table_Format
" <leader>t

" NerdTree
let NERDTreeShowLineNumbers=1
"let NERDTreeShowBookmarks=1
"let NERDChristmasTree=1
nnoremap <leader>e :NERDTreeMirrorToggle<CR> 
nnoremap <leader>b :Bookmark<CR>
nnoremap <leader>o :OpenBookmark 
" o - open file in explorer
" a - open file in vim tab
" i - open file in horizontal split
" s - open file in vertical split
" p - go to parent directory
" r - refresh current directory
" ctrl+ww - switch between explorer and buffer

" Jedi
autocmd FileType python setlocal completeopt-=preview
let g:jedi#auto_initialization = 1
"let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#get_definition_command = "<leader>d"
let g:jedi#goto_definitions_command = "<leader>d"
"let g:jedi#pydoc = "K"
let g:jedi#documentation_command = "K"
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 1
let g:jedi#rename_command = "<leader>r"
"let g:jedi#related_names_command = "<leader>n"
let g:jedi#usages_command = "<leader>n"
"let g:jedi#show_function_definition = "1"
"let g:jedi#show_call_signatures = "1"
