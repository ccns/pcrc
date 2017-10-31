syntax on
se cin nu si ai ts=4 sw=4 bg=dark

inoremap jk <Esc>
nnoremap <Space> :w<CR>
inoremap <buffer> {<CR> {<CR><END><CR>}<UP><END>

map <C-A> ggVG"+y
map <F6> :call Run()<CR>
func! Run()
  exec "w"
  exec "!g++ -Wall % -o %<"
  exec "!./%<"
endfunc
map <F5> :call RunTest()<CR>
func! RunTest()
  exec "w"
  exec "!g++ -Wall % -o %<"
  exec "cat input | ./%< > output"
endfunc
