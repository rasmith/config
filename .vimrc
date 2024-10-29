filetype plugin indent on

set nowrap

set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility

set spell

set showmode                    " display the current mode
syntax enable
set background=dark

set showmatch
set history=8000
set ignorecase

set cursorline                  " highlight current line

set showcmd

set laststatus=2

set tabpagemax=15               " only show 15 tabs

" Set color column
set colorcolumn=80

" Set text width
set textwidth=80

set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

" Set location for temporary (swp) files
set directory=/tmp

" Check to see if a file has been changed by another text editor
set autoread

" Switch to another buffer without saving
set hidden

" Back up files
set backup

" Set a directory to save file backups with full path
set backupdir=~/.vim/backup

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set t_Co=256

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Use 'dir' option to install plugin in a non-default directory
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }

" Post-update hook: run a shell command after installing or updating the plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Post-update hook can be a lambda expression
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

" On-demand loading: loaded when the specified command is executed
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Nerd commenter
Plug 'scrooloose/nerdcommenter'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'sainnhe/everforest'

Plug 'NLKNguyen/papercolor-theme'

Plug 'rhysd/vim-clang-format'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

colorscheme PaperColor

let g:NERDTreeMouseMode = 3

