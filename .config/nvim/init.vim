"
" VIM dotfiles
"

"
" BASE
"
set wildmenu " Display all matching files when the tab complete
set hlsearch " highlight search

set shiftwidth=4  " tab indent size
set softtabstop=4 " insert tab

set ignorecase    " not case sensitive
set smartcase     " case smart


"
" FILE-BROWSING
"
set path+=** " Search down into subfolder
" :find to search trough files
" :find *.cpp for every cpp files
"
noremap <C-n> :NERDTreeToggle<CR>              " NERDTree
let g:SuperTabDefaultCompletionType = "<c-n>"  " Autocomplete
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:netrw_banner=0                           " Disable annoying banner
let g:netrw_browse_split=4                     " Open a prior window
let g:netrw_altv=1                             " Opensplits to the right
let g:netrw_liststyle=3                        " Tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"
" :edit a folder to open a file browser
"  <CR>/v/t to open in an h-split/v-split/tab
"  Check |netrw_browse_maps| for more mapping

"
" TAGS
"
" Don't forget to create MakeTags files
command! TagsUpdate !ctags -R .
" Ctags help
" Use ^] to jump to tag under cursor
" Use g^] for ambiguous tags
" Use ^t to jump back up the tag stack


"
" AUTO-COMPLETE
"
" Use ^n OR ^p to go back and forth in the suggestion list
"
" ^x^n for JUST this file
" ^x^f for filenames (works with path tricks
" ^x^] for tags only

"
" NAVIGATION
"
nnoremap <C-j> gT
nnoremap <C-k> gt
nnoremap <C-h> :tabm -1<CR>
nnoremap <C-l> :tabm +1<CR>

nnoremap tn :tabnew<CR>       " New tab
nnoremap tq :tabclose<CR>     " Close tab

nnoremap <A-h> <C-w>h         " Buffer@Left
nnoremap <A-j> <C-w>j         " Buffer@Top
nnoremap <A-k> <C-w>k         " Buffer@Bottom
nnoremap <A-l> <C-w>l         " Buffer@Right

"
" PLUGINS
"
call plug#begin('~/.vim/plugged')
"Base
Plug 'mhinz/vim-startify' "A nice start menu
Plug 'vim-scripts/Color-Scheme-Explorer'
Plug 'scrooloose/nerdtree' " Filesystem tree
Plug 'Townk/vim-autoclose' " Autclose brackets

"Auto complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neoinclude.vim' "also check completion in includes
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-zsh'
Plug 'dart-lang/dart-vim-plugin' " Dart completion

Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] , 'do' : 'npm install' }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

"Behavior
Plug 'tpope/vim-surround' "Sourounding
Plug 'honza/vim-snippets' "snippets engine
Plug 'SirVer/ultisnips' "sippets

"Tools
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace' "show when there is gross trailing whitespace
Plug 'tpope/vim-repeat' "repeat last command from plugin
Plug 'tpope/vim-commentary' "Comment shortcut
Plug 'KabbAmine/vCoolor.vim' " color picker

"Looks
Plug 'luochen1990/rainbow' "rainbow highlight brackets
Plug 'lilydjwg/colorizer' " Colorize hexa or rgb
Plug 'neomake/neomake' "do full syntax checking for most languages
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'miyakogi/seiya.vim' "background transparent again
Plug 'kovetskiy/sxhkd-vim'
Plug 'LnL7/vim-nix' "nix vim syntax
Plug 'kaicataldo/material.vim' " material theme

"Plug 'ryanoasis/vim-devicons' "Icons should always be last plugin
call plug#end()



"
" DISCOVERY
"

"Colors
set t_Co=256
set background=dark
set termguicolors
syntax enable

"File settings
set nobackup		" do not keep a backup file, use versions instead
set autoread
set encoding=utf-8
set fileencoding=utf-8  " write
set fileencodings=utf-8 " read
set bomb                " unicode header
set binary              " warning disable expandtab if set after

"
" WTF are those?
"
tnoremap <Esc> <C-\><C-n>
set number relativenumber
set numberwidth=1
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <C-_> :noh<CR>
nnoremap <C-ç> :set hlsearch!<CR>
nnoremap Q <nop> "Disable annoying EX mode


"set foldmethod=syntax
"set clipboard=unnamedplus
set mouse=ni

"Indent settings
set autoindent                " always set autoindenting on
set copyindent                " copy Indentation

"Variables
let mapleader = " "
let g:deoplete#enable_at_startup = 1
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"} "fix autoclose breaking escape exit autocompletion

let g:seiya_auto_enable=1
" Default value: ['ctermbg']
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']

" Default mapping
let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_start_word_key      = '<C-b>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-b>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'

"Augroup
augroup AutoGroup
    au!
    " autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
augroup END

augroup Binary
    au!
    au BufReadPre  *.bin let &bin=1
    au BufReadPost *.bin if &bin | %!xxd
    au BufReadPost *.bin set ft=xxd | endif
    au BufWritePre *.bin if &bin | %!xxd -r
    au BufWritePre *.bin endif
    au BufWritePost *.bin if &bin | %!xxd
    au BufWritePost *.bin set nomod | endif
augroup END

colo material
