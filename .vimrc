set nocompatible              " required
"filetype off                  " required
filetype plugin on            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'vim-latex/vim-latex'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dracula/vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/fzf'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vimwiki/vimwiki'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'roxma/vim-tmux-clipboard'
"Plugin 'Valloric/YouCompleteMe'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable mouse for scrolling and resizing
set mouse=a

" The number of screeen lines to keep above and below the cursor
set scrolloff=3

" Display a confirmation dialog when closing an unsaved file
set confirm

" Store swap files in the following directory
set directory=$HOME/.vim/swp//

" Disable backup files
set nobackup

" Tmux session: allowing clipboard usage
"set clipboard+=unnamed
if $TMUX == ''
   set clipboard+=unnamed
endif

" Enable sudo when saving a file
" run :w!! to use it
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Set status line
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Display command line's tab complete options as a menu
set wildmenu

" Set undofile command and the directory
set undofile
set undodir=~/.vim/undodir

" Enable folding
set foldenable
set foldmethod=indent
set foldcolumn=2
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Map buffer previous and next commands
" Note that we first map the alt key to the option key in macOS
execute "set <M-J>=\ej"
execute "set <M-K>=\ek"
map <M-K> :bprev<CR>
map <M-J> :bnext<CR>

" Map keys for switching windows
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" make . to work with visually selected lines
vnoremap . :normal.<CR>

" Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Use Python file template
autocmd BufNewFile *.py 0r ~/.vim/templates/python.tpl

" Auto remove trailing whitespace
match ErrorMsg '\s\+$'             " highlight whitespace
autocmd BufWritePre * :%s/\s\+$//e " remove trailing whitespaces automatically

" Python settings
set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
"au BufNewFile, BufRead *.py
    "\ set tabstop=4 
	"\ | set softtabstop=4
	"\ | set shiftwidth=4
	"\ | set textwidth=79
	"\ | set expandtab
	"\ | set smartindent
	"\ | set autoindent
	"\ | set fileformat=unix
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

" Python syntax on
let python_highlight_all=1
syntax on

" Disable naming warnings
"let g:flake8_naming_marker=''
"let g:flake8_show_in_file=1

" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
set statusline+=%F
let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": ["ruby", "php"],
        \ "passive_filetypes": ["python"] }

" Hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Line numbering
set nu
set relativenumber
augroup toggle_relativer_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

" Use the Leader key
"let mapleader="\<Space>"
"nnoremap <Leader>w :w<CR>
"vmap <Leader>y "+y
"vmap <Leader>d "+d
"nmap <Leader>p "+p
"nmap <Leader>P "+P
"vmap <Leader>p "+p
"vmap <Leader>P "+P

" UTF-8 Support
set encoding=utf-8

" netrw settings
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

" Color schemes
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
"colorscheme solarized
"colorscheme dracula
"colorscheme monokai
call togglebg#map("<F5>")

" System clipboard
set clipboard=unnamed

" Turn on spell check
autocmd BufRead,BufNewFile *.md setlocal spell
"autocmd BufRead,BufNewFile *.tex setlocal spell

" Latex settings
"
let g:tex_flavor='pdflatex'
"let g:tex_flavor='latex'
"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
"let g:Tex_MultipleCompileFormats='pdf'
"let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'

"let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
"let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
"let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
""let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps'
""let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi'
""let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'

"let g:Tex_ViewRule_dvi = 'texniscope'
"let g:Tex_ViewRule_ps = 'Preview'
let g:Tex_ViewRule_pdf = 'Skim'

"let g:Tex_FormatDependency_ps  = 'dvi,ps'
"let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
"let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'
