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
  :autocmd Filetype javascript set softtabstop=2
  :autocmd Filetype javascript set sw=2
  :autocmd Filetype javascript set ts=2
  :autocmd Filetype java set softtabstop=2
  :autocmd Filetype java set sw=2
  :autocmd Filetype java set ts=2
  :autocmd Filetype html set softtabstop=2
  :autocmd Filetype html set sw=2
  :autocmd Filetype html set ts=2
  :autocmd Filetype htmldjango set softtabstop=2
  :autocmd Filetype htmldjango set sw=2
  :autocmd Filetype htmldjango set ts=2
  :autocmd Filetype text set sw=2
  :autocmd Filetype text set ts=2
  :autocmd Filetype text set softtabstop=2
  :autocmd Filetype text hi SpellBad cterm=reverse
  :autocmd Filetype tex set sw=2
  :autocmd Filetype tex set ts=2
  :autocmd Filetype tex set softtabstop=2
  :autocmd Filetype tex hi SpellBad cterm=reverse
endif

"set html as django html
au BufNewFile,BufRead *.html set filetype=htmldjango

