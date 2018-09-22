source ~/.vim/general.vim
source ~/.vim/plugins.vim
source ~/.vim/filetypes.vim

set ruler
set showcmd
set showmatch
set incsearch
set smartcase
set expandtab
set encoding=utf-8
set laststatus=2
set nu
set termguicolors
set term=screen-256color
set clipboard=unnamed
colorscheme one
if &term =~# '^screen'
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
imap jj <ESC>
map , <leader>
set cc=80
let g:enable_bold_font = 1
