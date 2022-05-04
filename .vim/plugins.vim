call plug#begin('~/.config/nvim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-eunuch'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-solarized8'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'elixir-editors/vim-elixir'
Plug 'sheerun/vim-polyglot' " watch for performance issues
Plug 'jlanzarotta/bufexplorer'
Plug 'icymind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'chrisbra/Colorizer'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
call plug#end()

" PLUGINS CONFIG
" dash
let g:solarized_old_cursor_style=1
let g:dash_activate=1
"fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'split',
  \ 'ctrl-v': 'vsplit' }
"go to window if any
let g:fzf_buffers_jump = 1

let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(15)
  let width = float2nr(120)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 10

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

nnoremap <leader>r :Require!<cr>
nnoremap <leader>p :FZF --reverse<cr>
" call fzf respecting .gitignore
nnoremap <leader>f :call fzf#run(fzf#wrap({
                        \'source': 'git ls-files --exclude-standard --others --cached', 'options': '--reverse'}))<cr>
nmap <leader>c :Tags<cr>
nmap <leader>bb :Buffers<cr>
nmap <leader>a :Ag<cr>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 0

" ag silversearcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
nmap <leader>/ :Ag<Space>

"buff maps
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
