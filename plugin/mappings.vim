" Leader key

  let mapleader = ","

" Clear search results in normal mode

  nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" Switch splits

  nmap <C-h> <C-W>h
  nmap <C-j> <C-W>j
  nmap <C-k> <C-W>k
  nmap <C-l> <C-W>l

" Close split

  nmap <Leader>qq :close<CR>

" Relative windows

  nmap <Leader><Left>  :leftabove vnew<CR>
  nmap <Leader><Right> :rightbelow vnew<CR>
  nmap <Leader><Up>    :leftabove new<CR>
  nmap <Leader><Down>  :rightbelow new<CR>

" Buffers

  nmap <Leader>bl :ls<CR>:b
  nmap <Leader>bp :bp<CR>
  nmap <Leader>bn :bn<CR>

" Tabs

  nmap <Tab>   gt
  nmap <S-Tab> gT

" Disable arrow keys

  inoremap <Up>    <NOP>
  inoremap <Down>  <NOP>
  inoremap <Left>  <NOP>
  inoremap <Right> <NOP>

  noremap  <Up>    <NOP>
  noremap  <Down>  <NOP>
  noremap  <Left>  <NOP>
  noremap  <Right> <NOP>

" Ctrl + s

  map <C-s>  <Esc>:w<CR>
  imap <C-s> <Esc>:w<CR>

" Number lines mode switch

  " http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
  " Vim 7.3 required
  let g:relativenumber = 1

  function! ToogleRelativeNumber()
    if g:relativenumber == 0
      let g:relativenumber = 1
      set nonumber
      set relativenumber
      echo "Show relative line numbers"
    else
      let g:relativenumber = 0
      set norelativenumber
      set number
      echo "Show line numbers"
    endif
  endfunction

  map <Leader>nm :call ToogleRelativeNumber()<CR>
