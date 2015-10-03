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

" Tomorrow

  " Number of colors
  set t_Co=256

  " Use light background
  set background=light

  " Enable Tomorrow colorscheme
  colorscheme Tomorrow

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

" vim-json

  let g:vim_json_syntax_conceal = 0

" ctrlp

let g:ctrlp_user_command = 'ag %s -i --nocolor
                                   \ --nogroup
                                   \ --hidden
                                   \ --ignore .git
                                   \ --ignore .svn
                                   \ --ignore .hg
                                   \ --ignore .DS_Store
                                   \ --ignore "node_modules/**/*"
                                   \ -g ""'

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
