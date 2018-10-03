syntax on
set cin nu si ai ts=4 sw=4 bg=dark

func! Run()
  exec "w"
  exec "!g++ -Wall % -o %<"
  exec "!./%<"
endfunc
func! RunTest()
  exec "w"
  exec "!g++ -Wall % -o %<"
  exec "cat input | ./%< > output"
endfunc

map <C-A> ggVG"+y
map <F6> :call Run()<CR>
map <F5> :call RunTest()<CR>
nnoremap <Space> :w<CR>
inoremap jk <Esc>
inoremap <buffer> {<CR> {<CR><END><CR>}<UP><END>
inoremap <buffer> for<TAB> for(int i = 0; i <; ++i) {<CR><END><CR>}<ESC><UP><UP>2fi
