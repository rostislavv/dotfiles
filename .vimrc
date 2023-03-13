set nocompatible              " be iMproved, required
filetype off                  " required
scriptencoding utf-8
set encoding=utf-8

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'mileszs/ack.vim'
Plug 'cohama/agit.vim'
Plug 'danro/rename.vim'

Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

Plug 'mhinz/vim-startify'
Plug 'jremmen/vim-ripgrep'
Plug 'eparreno/vim-l9'

Plug 'vim-scripts/FuzzyFinder'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

Plug 'jlanzarotta/bufexplorer'
Plug 'bkad/CamelCaseMotion'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'sjl/gundo.vim'

Plug 'sheerun/vim-polyglot'



"Ruby
Plug 'tpope/vim-bundler', { 'for': 'ruby'  }
Plug 'tpope/vim-rails', { 'for': 'ruby'  }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby'  }

"JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript'  }
Plug 'mxw/vim-jsx', { 'for': 'javascript'  }
Plug 'jelera/vim-javascript-syntax' , { 'for': 'javascript'  }
Plug 'othree/yajs.vim', { 'for': 'javascript'  }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript'  }

Plug 'Chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript'  }

Plug 'sickill/vim-pasta', { 'for': 'javascript'  }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'for': 'javascript'  }

"HTML
Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript']  }
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript']  }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript']  }
Plug 'tpope/vim-haml', { 'for': 'haml' }
"CSS/LESS/Stylus/SCSS
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus']  }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass']  }
Plug 'groenewege/vim-less', { 'for': 'less'  }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss']  }
Plug 'wavded/vim-stylus', { 'for': 'stylus'  }"

"Vue
Plug 'posva/vim-vue'

"python
Plug 'vim-scripts/indentpython.vim'


"collor chemas"
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'crusoexia/vim-monokai'
Plug 'joshdick/onedark.vim'

"custom
Plug 'wakatime/vim-wakatime'

call plug#end()


" ale
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

"System
"autocmd bufwritepost *.js silent !standard-format --fix -w %
set autoread

" This is clearly onedark specific
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

let g:solarized_termcolors=256
let g:mapleader=' '
set background=dark
set number
set expandtab
set tabstop=2
set shiftwidth=2
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list
set backupcopy=yes
set clipboard=unnamed
set backspace=indent,eol,start
let g:localvimrc_file = '.vimrc'
set undofile
set undodir=~/.vim/undodir
set directory=~/.vim/swap
set backupdir=~/.vim/backups

set hlsearch
set incsearch

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" statusline
  :set statusline=%{fugitive#statusline()}\ %L\ %f

" NERDTree
" Leader is <space>
  map <Leader>N :NERDTreeToggle<CR>
  map <Leader> <Plug>(easymotion-prefix)
  nmap <Leader>n :NERDTreeFind<CR>
  autocmd VimEnter * NERDTree
  autocmd vimenter * wincmd p
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
  let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" Tags
  set tags=./tags;/
  map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
  map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"Aliases
  command! FStandard ! standard-format --fix -w %
  command! FEslint ! eslint -c ./.eslintrc --fix %


"Tabs -> buffers
set modifiable


" FZF
set rtp+=~/.fzf
map <C-f> :FZF<CR>
map <C-e> :BufExplorerVerticalSplit<CR>

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" JS
noremap <F3> :ALEFix<CR>
let g:formatdef_prettier_javascript = '"prettier"'

let g:ale_fix_on_save = 1
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']

" python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" remove whitespaces in line
au BufWritePre * %s/\s\+$//e

" CamelCaseMotion config
call camelcasemotion#CreateMotionMappings(',') " should add , to movements - default like ',m', ',e'

" gundo config
let g:gundo_prefer_python3 = 1
