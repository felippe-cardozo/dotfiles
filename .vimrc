" Some Debian-specific things
if has("autocmd")
  if has('gui')
    " Make shift-insert work like in Xterm
    autocmd GUIEnter * if empty(maparg("<S-Insert>", "nvso")) | execute "map <S-Insert> <MiddleMouse>" | endif
    autocmd GUIEnter * if empty(maparg("<S-Insert>", "ic")) | execute "map! <S-Insert> <MiddleMouse>" | endif
  endif
endif

" Set paper size from /etc/papersize if available (Debian-specific)
if filereadable("/etc/papersize")
  let s:papersize = matchstr(readfile('/etc/papersize', '', 1), '\p*')
  if strlen(s:papersize)
    exe "set printoptions+=paper:" . s:papersize
  endif
endif



" We know xterm-debian is a color terminal
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
  :autocmd Filetype ruby set softtabstop=2
  :autocmd Filetype ruby set sw=2
  :autocmd Filetype ruby set ts=2
  :autocmd Filetype eruby set softtabstop=2
  :autocmd Filetype eruby set sw=2
  :autocmd Filetype eruby set ts=2

endif

"colors
if (has("termguicolors"))
 set termguicolors
endif

"Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
Plug 'neomake/neomake'
Plug 'godlygeek/csapprox'
Plug 'morhetz/gruvbox'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mejorf/vim-railscasts-theme'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
call plug#end()

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set nocompatible
set backspace=indent,eol,start
set history=50
set nomodeline
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set number
set relativenumber
set ruler
set cursorline
set expandtab
set laststatus=2
set statusline=%f\ %p%%%=\(#%n\)%m "filename all the time
set t_Co=256
colorscheme railscasts
set clipboard+=unnamedplus
hi ColorColumn guibg=#222222
"call matchadd('ColorColumn', '\%81v', 100)
set colorcolumn=81
hi StatusLine guifg=#87af5f guibg=#202020

"ag silversearcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"maps
let mapleader=","
noremap \ ,
imap jj <Esc>
tmap jj <Esc>
cmap jj <Esc>
imap <C-Space> <Esc>
tmap <C-Space> <Esc>
nmap <C-Space> <Esc>
cmap <C-Space> <Esc>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>s :so %<cr>
set pastetoggle=<F3>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nmap <leader>/ :Ag<Space>
"nmap ; :
:tnoremap <C-x> <C-\><C-n>
"nmap \l gt
"nmap \h gT
nmap <leader>t :tabnew<cr>
nmap <leader>r :Rake<cr>

"netwr
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_list_hide= '.*\.swp$,\~$,\.orig$'
map <leader>n :Lexplore<cr>

"fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'split',
  \ 'ctrl-v': 'vsplit' }
"go to window if any
let g:fzf_buffers_jump = 1
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }
nnoremap <leader>f :FZF --reverse<cr>
nmap <leader>b :Buffers<cr>
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

 "better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"neomake
let g:neomake_ruby_enabled_makers = ['rubocop']
"run neomake every time file is saved and every time is opened
autocmd! BufWritePost,BufEnter * Neomake 
"open neomake log
nmap <leader>L :lopen<cr> 

"surround
"map <leader>y ysiw
"map <leader>ch cs
"map <leader>d ds

"deoplete
let g:deoplete#enable_at_startup = 1
