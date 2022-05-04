filetype plugin indent on

if has("autocmd")
  filetype plugin indent on
  :autocmd Filetype ruby set softtabstop=2
  :autocmd Filetype ruby set sw=2
  :autocmd Filetype ruby set ts=2
  :autocmd Filetype eruby set softtabstop=2
  :autocmd Filetype eruby set sw=2
  :autocmd Filetype eruby set ts=2
  :autocmd Filetype text set sw=2
  :autocmd Filetype text set ts=2
  :autocmd Filetype text set softtabstop=2
  :autocmd Filetype text hi SpellBad cterm=reverse
  :autocmd Filetype tex set sw=2
  :autocmd Filetype tex set ts=2
  :autocmd Filetype tex set softtabstop=2
  :autocmd Filetype tex hi SpellBad cterm=reverse
endif
