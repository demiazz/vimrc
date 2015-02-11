" NERDTree

  let NERDTreeShowBookmarks=1
  let NERDTreeChDirMode=2
  let NERDTreeQuitOnOpen=1
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=0
  let NERDTreeMinimalUI=1
  let NERDTreeDirArrows=1
  let NERDTreeBookmarksFile= $HOME . '/.nvim/.NERDTreeBookmarks'

  nmap <Bs> :NERDTreeTabsToggle<CR>

" Solarized

  " Number of colors
  set t_Co=256

  " Enable solarized color scheme
  let g:solarized_termcolors=256
  colorscheme solarized
  set background=light

  " Enable syntax highlight
  syntax enable
