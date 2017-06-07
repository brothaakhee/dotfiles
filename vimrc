set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
let g:vundle_default_git_proto = 'https'
call vundle#begin()

" Plugins to install
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'walm/jshint.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/MatchTagAlways'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'

" Helpful plugins
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'ervandew/supertab'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kien/ctrlp.vim'
"Plugin 'mileszs/ack.vim'
"Plugin 'phleet/vim-mercenary'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/syntastic'
"Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-abolish'
"Plugin 'tpope/vim-eunuch'
"Plugin 'tpope/vim-fugitive'
"Plugin 'gregsexton/gitv'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-speeddating'
"Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-endwise'
"Plugin 'walm/jshint.vim'
"Plugin 'aaronbieber/quicktask'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'michaeljsmith/vim-indent-object'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'majutsushi/tagbar'
"Plugin 'b4b4r07/vim-hcl'
"Plugin 'fatih/vim-go'
"Plugin 'heavenshell/vim-pydocstring'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

" Tim's vim bundle
Plugin 'shadowfax-chc/vim-fax'

call vundle#end()

filetype plugin indent on

" Load everything else from vim-fax/vimrc.vim
if filereadable(expand("~/.vim/bundle/vim-fax/vimrc.vim"))
    execute "source ~/.vim/bundle/vim-fax/vimrc.vim"
endif

" NerdTree settings
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" i want to use my shift up and shift down
let g:NERDTreeMapJumpFirstChild = ''
let g:NERDTreeMapJumpLastChild = ''


syntax enable " Turn on Syntax highlighting

" auto indenting
set et
set sw=4 " shift width is two, yes two
set softtabstop=4 " two! NOW FOUR!
"set nosmarttab " fuck tabs!
"set autoindent " It's easier than doing it myself.
set smartindent " Don't be stupid about it.
set expandtab " all tabs are actually spaces

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
set ruler " show me the line,column my cursor is on
set noshowcmd " Don't display incomplete commands
set nolazyredraw " If we're going to redraw, lets not be lazy about it.
syntax sync minlines=1000 " Look for synchronization points 1000 lines before the current position in the file.
set number " show line numbers
set wildmenu " Turn on wild menu. Sounds fun.
set wildmode=longest:list,full " make tab completion act like bash, but even better!
set ch=2 " Command line height
set backspace=indent,eol,start " Fixes a problem where I cannot delete text that is existing in the file
set whichwrap=b,s,h,l,<,>,[,] " Wrap on other things
set report=0 " Tell us about changes
set nostartofline " don't jump to the start of a line when scrolling
" I'm in a goddamn hurry. I want anything up near esc to be esc so I can just mash the keyboard.
"inoremap <F1> <ESC>
"nnoremap <F1> <ESC>
"vnoremap <F1> <ESC>
" quick <esc> out by hitting kj
imap kj <ESC>
" code folding
set foldmethod=indent
set foldlevel=99

" ----------------------------------------------------------------------------
" Visual stoof
" ----------------------------------------------------------------------------
set background=dark " We use a dark terminal so we can play nethack
set mat=5 " show matching brackets for 1/10 of a second
set laststatus=2 " always have a file status line at the bottom, even when theres only one file
set novisualbell " Stop flashing at me and trying to give me seizures.
set virtualedit=block " Allow virtual edit in just block mode.

" ----------------------------------------------------------------------------
" Searching and replacing
" ---------------------------------------------------------------------------
set showmatch " brackets/brace matching
set incsearch " show me whats matching as I type my search
set hlsearch " Highlight search results
set ignorecase " Ignore case while searching
set smartcase " psych on that whole ignore case while searching thing! This will match case if you use any uppercase characters.
set gdefault " Always do search and replace globally
" prepend all searches with \v to get rid of vim's 'crazy default regex characters'
nnoremap / /\v
" make tab % in normal mode. This allows us to jump between brackets.
nnoremap <tab> %
" make tab % in visual mode. this allows us to jump between brackets.
vnoremap <tab> %
" make <space> + character insert a single character in line
nnoremap <Space> i_<Esc>r


" ----------------------------------------------------------------------------
" Moving around
" ---------------------------------------------------------------------------
" disabling the up key in normal mode. LEARN TO USE k
nnoremap <up> <nop>
" disabling the down key in normal mode. LEARN TO USE j
nnoremap <down> <nop>
" disabling the left key in normal mode. LEARN TO USE h
nnoremap <left> <nop>
" disabling the right key in normal mode. LEARN TO USE l
nnoremap <right> <nop>
" disabling the up key in normal mode. LEARN TO USE k
inoremap <up> <nop>
" disabling the down key in normal mode. LEARN TO USE j
inoremap <down> <nop>
" disabling the left key in normal mode. LEARN TO USE h
inoremap <left> <nop>
" disabling the right key in normal mode. LEARN TO USE l!!!
inoremap <right> <nop>

" scroll faster (3 chars at a time) with shift
nmap <S-k> 3k
nmap <S-j> 3j
nmap <S-h> 3h
nmap <S-l> 3l

" back tab
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

" splitting screens
nmap vv :vsplit .
nmap ss :split .

" moving between screens
nmap <M-h> <C-w>h
imap <M-h> <C-w>h
nmap <M-j> <C-w>j
imap <M-j> <C-w>j
nmap <M-k> <C-w>k
imap <M-k> <C-w>k
nmap <M-l> <C-w>l
imap <M-l> <C-w>l

source ~/pep8.vim

" Lets use all the colors
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme lucius

" Pep8 80 line column mark
highlight ColorColumn ctermbg=237
set colorcolumn=80
"let &colorcolumn=join(range(81,999),",")
"let &colorcolumn="80,".join(range(120,999),",")

" Hack to help map colors
if &term =~ "xterm"
    "256 color --
    let &t_Co=256
    " restore screen after quitting
    set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
    if has("terminfo")
        let &t_Sf="\ESC[3%p1%dm"
        let &t_Sb="\ESC[4%p1%dm"
    else
        let &t_Sf="\ESC[3%dm"
        let &t_Sb="\ESC[4%dm"
    endif
endif



" ---------------------------------------------------------------------------
" Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
"if version >= 700
"  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
"  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
"endif

autocmd InsertEnter * set cursorline 
autocmd InsertLeave * set nocursorline 
:highlight CursorLine ctermbg=DarkGrey
