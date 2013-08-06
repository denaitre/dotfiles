" Pathogen settings
execute pathogen#infect()
Helptags
filetype plugin indent on
set nocompatible
set modelines=0

" TAB settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Common settings
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Set Leader Key
let mapleader=","

" Make pasting done without any indentation break
set pastetoggle=<F3>

" Enable Mouse
set mouse=a

" Settings for Searching and Moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set nu
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Handles long lines nicely
set wrap
set textwidth=79 fo=qct

"Map : to ; in command mode
nnoremap ; :

" Shortcut keys using leader key
" ,W remove white space from a file
nnoremap <leader>W :%s/\s\+$//w<cr>:let @/=''<CR>
" ,q re-harwrap paragraph
nnoremap <leader>q gqip

" resize split when window is resized
au VimResized * :wincmd =

" Wildmenu completion
set wildmenu
set wildmode=list:longest


" ========== Plugin Settings =========="

" Mapping to NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']

" Mini Buffer some settigns."
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Rope Plugin settings
imap <leader>j <ESC>:RopeGotoDefinition<cr>
nmap <leader>j <ESC>:RopeGotoDefinition<cr>

" Taglist key bindings."
nmap <C-l> <ESC>:TlistToggle<cr>
imap <C-l> <ESC>:TlisToggle<cr>i
" TagListTagName - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compact_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 40
nnoremap t <C-]>
nmap <C-k> <ESC>:TagbarToggle<cr>
imap <C-k> <ESC>:TagbarToggle<cr>i

" =========== END Plugin Settings =========="

"no root right access ?
cmap w!! w ! sudo tee >/dev/null %
