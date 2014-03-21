"""  all settings

"" system settings

set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on
set history=1000
set ts=4 sw=4 et
set ht=4 
colorscheme twilight
set backspace=indent,eol,start  " Make backspace delete lots of things
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set smartcase		" Do smart case matching
set autowrite		" Automatically save before commands like :next and :make
set laststatus=2
set statusline=%<%f\ %y%m\ [F1\ Help,F2\ SC,F3,F4,F5,F6,F7\ NT,F8\ TL,F9,c-support]%=%-14.(%l,%c%V%)\ %P
" * The current buffer can be put to the background without writing to disk;
" * When a background buffer becomes current again, marks and undo-history are remembered.
set hidden 
set visualbell
set noerrorbells
set nu
set ruler
set cindent
set scrolloff=3
set title
set wildmenu
set wildmode=list:longest
" Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" encoding
set fileencodings=utf-8,gb18030,utf-16,big5
" visual
set selection=exclusive
" fold
syn region myFold start="{" end="}" transparent fold
syn sync fromstart
set foldmethod=syntax
set foldnestmax=3
set foldcolumn=4
set foldlevel=10
hi Folded       ctermfg=green ctermbg=black
hi FoldColumn    ctermbg=black ctermfg=white
"set textwidth=80
autocmd FileType text setlocal textwidth=80
autocmd FileType c setlocal textwidth=80
autocmd FileType mail setlocal textwidth=78
set swb=usetab

syn match endingspace "[ \t]\+$"
au CursorMoved * hi link endingspace Error
au CursorMovedI * hi link endingspace None

"" plugin setting

" omni completion
"set ofu=syntaxcomplete#Complete   
set completeopt=longest,menu

" cscope
set csto=0     
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
	cs add cscope.out
endif
set csverb

" bufExplorer
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerShowUnlisted=1      " Show unlisted buffers.

" c.vim
let g:C_MapLeader = "."

" supertab
let g:SuperTabDefaultCompletionType="<c-x><c-o>"

" minibuf
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 


""" All key mappings 

"" system mappings

imap <silent> ` <C-X><C-O>
" buffer swift
map <Left> :bp<CR>
map <Right> :bn<CR>
" date insert
nmap <Leader>d :r !LANG=C date +"\%x \%X"<CR>
" self define map
nmap <Leader>b :call Backname()<CR>

"" plugin mappings

" ScrollColor
nnoremap <silent> <F2> :COLOR<CR>
" buffer-explorer
"nnoremap <silent> <F6> :BufExplorerVerticalSplit<CR>
" NERDTree
nnoremap <silent> <F7> :NERDTreeToggle<CR>
" taglist
nnoremap <silent> <F8> :TlistToggle<CR>  
" cscope
" The following maps all invoke one of the following cscope search types:
"
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
"
let mapleader = ","  " cscope use a special leader key
nmap <Leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <Leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <Leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <Leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <Leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
let mapleader = "\\"   " set to the default value

" winmanager
"map <c-w><c-t> :WMToggle<cr>
"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
"let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<CR>
"let g:winManagerWidth=35

" abbreviate
ab #d #define
ab #i #include
ab #m int<Space>main(int<Space>argn,<Space>const<Space>char<Space>*argv[])
ab #b /*****************************************************************
ab #e <Space>*************************************************************/

" runtime macros/matchit.vim


""" plugins used
" 273 taglist
" 1658 The NERD Tree
" 42 bufexplorer
" 159 minibufexpl
" 625 Color Sampler Pack
" 213 c.vim
