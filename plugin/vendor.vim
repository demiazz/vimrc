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
  let g:solarized_light=1
  colorscheme solarized

  if g:solarized_light == 0
    set background=dark
  else
    set background=light
  endif

  function SwitchSolarized()
    if g:solarized_light == 0
      let g:solarized_light = 1
      set background=light
      colorscheme solarized
    else
      let g:solarized_light = 0
      set background=dark
      colorscheme solarized
    endif
  endfunction

  " Enable syntax highlight
  syntax enable

" Lightline

  let g:lightline = {
        \   'colorscheme': 'solarized',
        \   'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \           [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
        \   },
        \   'component': {
        \     'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
        \     'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
        \     'fugitive': '%{exists("*fugitive#statusline")?fugitive#statusline():""}'
        \   },
        \   'component_visible_condition': {
        \     'readonly': '(&filetype!="help"&& &readonly)',
        \     'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
        \     'fugitive': '(exists("*fugitive#statusline") && ""!=fugitive#statusline())'
        \   }
        \ }

" IndentLine

  let g:indentLine_color_term = 187
  let g:indentLine_char       = '¦'
