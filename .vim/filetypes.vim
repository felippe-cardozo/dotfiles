filetype plugin indent on

if has("autocmd")
  filetype plugin indent on
  :autocmd Filetype ruby set softtabstop=2
  :autocmd Filetype ruby set sw=2
  :autocmd Filetype ruby set ts=2
  :autocmd Filetype eruby set softtabstop=2
  :autocmd Filetype eruby set sw=2
  :autocmd Filetype eruby set ts=2
  :autocmd Filetype javascript.jsx set softtabstop=2
  :autocmd Filetype javascript.jsx set sw=2
  :autocmd Filetype javascript.jsx set ts=2
  :autocmd Filetype java set softtabstop=2
  :autocmd Filetype java set sw=2
  :autocmd Filetype java set ts=2
  :autocmd Filetype html set softtabstop=2
  :autocmd Filetype html set sw=2
  :autocmd Filetype html set ts=2
  :autocmd Filetype htmldjango set softtabstop=2
  :autocmd Filetype htmldjango set sw=2
  :autocmd Filetype htmldjango set ts=2
endif

"set html as django html
au BufNewFile,BufRead *.html set filetype=htmldjango

