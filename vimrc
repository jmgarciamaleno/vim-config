" CONFIG OPTIONS

set hidden " Don't close buffers with changes when you open another one.
set number " Line numbers.
" set relativenumber " Numbers relative to the cursor line.
autocmd InsertEnter * silent! :set norelativenumber " Normal numbers in insert mode.
autocmd InsertLeave * silent! :set relativenumber " Relative numbers in normal mode.
syntax on " Code syntax.
set cursorline " Highlight the cursor line.
set expandtab " Tab key insert spaces.
set shiftwidth=4 " Number of spaces used for indentation.
set softtabstop=4 " Backspace key treat the tab spaces as a single tab.
set autoindent " Auto indent new lines.
set hlsearch " Highlight search occurrences.
set wildmenu " Enables bottom menu with a list of completions. Tab cycles through them.
set colorcolumn=100 " Vertical line indicator.
set term=xterm-256color " Name of the terminal. Tells vim to display better colors.
" set t_Co=256 " Maximum number of colors that can be displayed.
set backup " Create a backup file when an existent file is modified.
set backupdir=~/.vim/backup/ " Backup files path.
set directory=~/.vim/swap/ " Swap (temporal) files path.
set background=dark
if !has('termguicolors') && v:version > 800
    set notermguicolors
endif
colorscheme tender
let blacklist = ['markdown'] " Array of filetypes where trailing spaces will not be removed on save.
autocmd BufWritePre * if index(blacklist, &ft) < 0 | :%s/\s\+$//e " Remove trailing spaces on save.
filetype plugin indent on " Filetype specific detection, plugins and indentation.
set nofoldenable " Deactivate fold by default, set foldenable to activate.
set foldmethod=syntax " Common values: indent, syntax, diff.
" set foldcolumn=4 " Number of columns that will be used to show the indentation levels on the left.
let g:php_folding=1 " Better PHP folding.
set nowrap " Don't wrap lines longer than the screen.

" PLUGINS OPTIONS

execute pathogen#infect()
let g:NERDTreeWinSize=40
let g:ctrlp_working_path_mode='c'
let g:ctrlp_open_multiple_files='1'
let g:ctrlp_user_command='find %s -type f -not \( -path "*/.git/*" -o -path "*/cache/*" -o -path "*/logs/*" \)'
let g:php_cs_fixer_path="php-cs-fixer"
let g:php_cs_fixer_level="psr2"
let g:syntastic_mode_map={
    \ 'mode': 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': ['html','xml']
\}
let g:syntastic_quiet_messages={"type":"style"}
autocmd FileType php set omnifunc=phpcomplete#CompletePHP " Use phpcomplete plugin omnicode.
let g:phpcomplete_complete_for_unknown_classes=0 " Don't try to complete unknown classes code.
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-k>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:tagbar_autoclose=1
let g:tagbar_compact=1
let g:tagbar_indent=0
let g:tagbar_show_visibility=1

" MAPPINGS

map <C-h> :bp<CR>
map <C-l> :bn<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-t> :Tagbar<CR>
