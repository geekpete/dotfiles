" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
if !has('nvim')
  Plug 'tpope/vim-sensible'
endif
Plug 'nelstrom/vim-markdown-folding'
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'reedes/vim-colors-pencil'
"Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'Yggdroot/indentLine'
Plug 'reedes/vim-pencil'
Plug 'robbles/logstash.vim'
Plug 'rust-lang/rust.vim'
Plug 'editorconfig/editorconfig-vim'
"Plug 'davidgranstrom/nvim-markdown-preview'
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
"Plug 'mcchrish/nnn.vim'
"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ }
"Plug 'dahu/vim-asciidoc'
" Initialize plugin system
call plug#end()


" markdown preview
"let g:mkdp_port = '8081'
"let g:mkdp_browser = '/usr/bin/firefox'


set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme pencil        " set colorscheme
let g:airline_theme='pencil' " <theme> is a valid theme name
set background=dark       " pick the dark version of pencil colorscheme
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
set laststatus=2
set backspace=indent,eol,start
set spell spelllang=en_au
set wrap
set colorcolumn=80
let g:vim_json_syntax_conceal = 0
"map <C-f> :NERDTreeToggle<CR>
map <C-f> :NnnPicker<CR>

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:deoplete#enable_at_startup = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" F11 to enable pencil
map <F11> :TogglePencil <CR>

" Python coolness
map <F12> :ALEFix <CR>

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
map <F11> :TogglePencil <CR>
let g:airline_extensions = ['branch', 'tabline', 'ale', 'whitespace']
