syntax on
se cin
se nu
se ts=4
se sw=4
se bg=dark

inoremap jk <Esc>
nnoremap <Space> :w<CR>

map <C-A> ggVG"+y
map <F6> :call Run()<CR>
func! Run()
  exec "w"
  exec "!g++ -Wall % -o %<"
  exec "!./%<"
endfunc
map <F5> :call RunOJ()<CR>
func! RunOJ()
  exec "w"
  exec "!g++ -Wall % -o %<"
  exec "!oj %<"
endfunc
