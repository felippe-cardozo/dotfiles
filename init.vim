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
syntax enable
set termguicolors
set clipboard=unnamed
" reset cursor to old default
set guicursor=
let g:enable_bold_font = 1
set background=light
colorscheme solarized8_flat
hi SpellCap NONE
map , <leader>
set cc=80
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

if has('terminal')
  tnoremap :TmuxNavigateLeft
  tnoremap :TmuxNavigateDown
  tnoremap :TmuxNavigateUp
  tnoremap :TmuxNavigateRight
endif
noremap <leader>z <c-w>_ \| <c-w>\|
noremap <leader>Z <c-w>=
