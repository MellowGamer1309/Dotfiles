""""""""""""""""""""
" GENERAL
""""""""""""""""""""
"set leader key
let g:mapleader = "\<Space>"

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %      

au FocusGained,BufEnter * checktime

cmap w!! w !sudo tee %

" Copy paste between vim and everything else
set clipboard=unnamedplus               

""""""""""""""""""""
" INTERFACE
""""""""""""""""""""

set scrolloff=8

" Format status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Ignore certain files in wildmenu
set wildignore=*.o,*~,*.pyc,*/.git/*

" Show the cursor position all the time
set ruler              			        

" More space for displaying messages
set cmdheight=1                         

" Required to keep multiple buffers open multiple buffers
set hidden                              

set ignorecase
set smartcase

set lazyredraw

set showmatch
set matchtime=2

set foldcolumn=1

" Line numbers
set number                              

" Enable your mouse
set mouse=a

" Horizontal splits will automatically be below
set splitbelow                          

" Vertical splits will automatically be to the right
set splitright                          

set completeopt=menu,menuone,noselect

" Make 0 always go to the beginning of a line
map 0 ^

" By default timeoutlen is 1000 ms
set timeoutlen=500                      

au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g'"" | endif

""""""""""""""""""""
" COLORS AND FONTS
""""""""""""""""""""

" Support 256 colors
set t_Co=256                            

" Enables syntax highlighing
syntax enable                           

" tell vim what the background color looks like
set background=dark                     
let g:dracula_colorterm = 0
colorscheme dracula

set encoding=utf-8                      
set fileencoding=utf-8                  

""""""""""""""""""""
" TEXT, TAB, AND INDENTS
""""""""""""""""""""

" Converts tabs to spaces
set expandtab                           

" Makes tabbing smarter will realize you have 2 vs 4
set smarttab                            

" Makes indenting smart
set smartindent                         

" Good auto indent
set autoindent                          

" Change the number of space characters inserted for indentation
set shiftwidth=4                        

" Insert 4 spaces for a tab
set tabstop=4                           

" Always show tabs
set showtabline=2                       

" treat dash separated words as a word text object"
set iskeyword+=-                      	

" So that I can see `` in markdown files
set conceallevel=0                      


""""""""""""""""""""
" SPELL CHECKING
""""""""""""""""""""

"set spell
"set spelllang=en_us

""""""""""""""""""""
" AUTOCOMPLETION
""""""""""""""""""""

" This is recommended by coc
set nobackup                            
" This is recommended by coc
set nowritebackup                       

" Faster completion
set updatetime=300                      

""""""""""""""""""""
" FUNCTIONS
""""""""""""""""""""

" Delete trailing whitespace on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun


