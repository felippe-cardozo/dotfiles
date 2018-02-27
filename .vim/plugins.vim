call plug#begin('~/.config/nvim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-sexp'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace', {'for': ['clojure']}
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'epilande/vim-es2015-snippets', {'for': ['javascript', 'javascript.jsx']}
Plug 'epilande/vim-react-snippets', {'for': ['javascript', 'javascript.jsx']}
Plug 'xolox/vim-misc'
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-solarized8'
Plug 'w0rp/ale'
Plug 'luochen1990/rainbow'
Plug 'guns/jellyx.vim'
Plug 'rakr/vim-one'
call plug#end()

" PLUGINS CONFIG

"rainbow
let g:rainbow_active = 1

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
nnoremap <leader>p :FZF --reverse<cr>
" call fzf respecting .gitignore
nnoremap <leader>f :call fzf#run(fzf#wrap({
                        \'source': 'git ls-files --exclude-standard --others --cached', 'options': '--reverse'}))<cr>
nmap <leader>c :Tags<cr>
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

"ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'python': ['flake8']}
let g:ale_open_list = 0


"ag silversearcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
nmap <leader>/ :Ag<Space>

