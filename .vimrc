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
set statusline=%f\ %y\ %M%=\%=\ %l\,%c%=\%p%%(#%n\) 
set laststatus=2
set nu
set termguicolors
set term=screen-256color
set clipboard=unnamed
colorscheme custom_sol
hi StatusLine ctermfg=242 ctermbg=254 guifg=#586e75 guibg=#eee8d5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=242 ctermbg=236 guifg=#586e75 guibg=#073642 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if &term =~# '^screen'
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
imap jj <ESC>
map , <leader>
set cc=80
