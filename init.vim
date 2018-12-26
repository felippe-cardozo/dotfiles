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
let g:enable_bold_font = 1
let g:neosolarized_contrast = "low"
let g:neosolarized_bold = 1
set background=dark
colorscheme NeoSolarized
map , <leader>
set cc=80
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

if has('terminal')
  tnoremap :TmuxNavigateLeft
  tnoremap :TmuxNavigateDown
  tnoremap :TmuxNavigateUp
  tnoremap :TmuxNavigateRight
endif