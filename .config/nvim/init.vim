set number relativenumber
set numberwidth=1

set hlsearch "highlight search
set ignorecase "not case sensitive
set smartcase "case smart

"set foldmethod=syntax
"set clipboard=unnamedplus
set mouse=ni

"Indent settings

set autoindent                " always set autoindenting on
set copyindent                " copy Indentation

"File settings

set nobackup		" do not keep a backup file, use versions instead
set autoread
set encoding=utf-8
set fileencoding=utf-8 "write
set fileencodings=utf-8 "read
set bomb "unicode header
set binary "warning disable expandtab if set after

"Tabs settings

set shiftwidth=4 "tab indent size
" set tabstop=4 "tab display
set softtabstop=4 "insert tab
" set expandtab "tabs are space

syntax enable
colorscheme monokai_pro


call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'

call plug#end()


"Shortcuts
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-_> :noh<CR>
nnoremap <C-ç> :set hlsearch!<CR>
nnoremap Q <nop> "Disable annoying EX mode
let g:SuperTabDefaultCompletionType = "<c-n>"

"tab nav with shift
nnoremap <C-J> gT
nnoremap <C-K> gt
nnoremap <C-H> :tabm -1<CR>
nnoremap <C-L> :tabm +1<CR>
nnoremap tn :tabnew<CR>
nnoremap tq :tabclose<CR>

"Quick edit init.vim
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

