set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" My plugins start here
Plugin 'dracula/vim', { 'name': 'dracula' }
" Plugin 'gergap/vim-ollama'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
"Plugin 'gergap/vim-ollama'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" My settings start here
set number
colorscheme dracula

" NodeTree settings
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeWinPos = "left"
let g:NERDTreeShowHiddenFiles = 1
" Fix for ^G in NodeTree directory name
let g:NERDTreeNodeDelimiter = "\u00a0"

" YCM settings
" Use semantic autocompletion, not already used functions only"
let g:ycm_semantic_triggers =  {
  \   'c,cpp,objc': [ 're!\w{3}', '_' ],
  \ }
"Remove top popup when autocompleting
set completeopt-=preview
set clipboard=unnamed,unnamedplus
