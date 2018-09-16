" remap the K char to insert newline
map K i<Enter><Esc>

" map the F4 key to toggle NERDtree
map <F4> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" map the F6 key to toggle Gundo tree
nnoremap <F6> :GundoToggle<CR>

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif
let g:completor_racer_binary = '/usr/local/bin/racer'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
let g:completor_auto_trigger = 0
inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"

" Pathogen
" execute pathogen#infect()

" insert comment delimiters
let @e = 'O# |10a=O'
let @b = 'O# |77a-o#  o# |77a-ku'

" typing @b will print the below 3 lines
"# |-----------------------------------------------------------------------------
"#
"# |-----------------------------------------------------------------------------
" typing @e will print the line below

"# |==========

autocmd FileType python colorscheme molokai
autocmd FileType sh colorscheme gruvbox
autocmd FileType vim colorscheme railscasts
autocmd FileType rust colorscheme mustang
autocmd FileType perl colorscheme dracula

" turn on syntax highlighting
:syntax enable

" if a given file type (perl, ruby, python, c, etc) has its own special auto-indentation rules, use them
:filetype plugin indent on

" Enable Fold settings
set foldmethod=indent
set foldlevel=99
set textwidth=79
let python_highlight_all=1
syntax on

" turn on auto-indenting (use this if you turn off option ':filetype plugin indent on')
":set ai

" make auto-indenting 'smarter' (use this if you turn off option ':filetype plugin indent on')
":set si

" optimize syntax highlighting for a dark terminal
":set bg=dark

" tabs are 4 spaces wide
:set ts=5

" auto-indentation kicks in 3 spaces
:set sw=4

" run case insensitive searches by default
:set ic

" swap tabs out for spaces
:set expandtab

" place a very helpful 'status-bar' at the bottom of the window
:set ruler

" highlight matched parens, brackets, beginning and end of code blocks
:set showmatch

" show line numbers
:set number

" turn off unbearable search highlighting default
:set nohlsearch

" automatically strip trailing whitespace when a file is saved
:autocmd BufWritePre * :%s/\s\+$//e

" the next two lines use the F5 key to toggle paste mode on/off
:nnoremap <F5> :set invpaste paste?<CR>
:set pastetoggle=<F5>

" special folding rules for perl files
:let perl_fold = 1

" auto-folding behavior is dictated based on file-type, when applicable
:set foldmethod=syntax

" lightly highlight the current line on which the cursor is placed (turn this off if it gets annoying)
:set cursorline

" lightly highlight the current column in which the cursor is placed (turn this off if it gets annoying)

:set cursorcolumn

" tell vim to scan the file for a modeline that contains in-line vim commands and options, just for that file
:set modeline

" the 'modeline' below tells vim that this is a vim command file (duh?)
" vim: set ft=vim :
:set autoread
