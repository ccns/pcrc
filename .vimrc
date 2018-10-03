syntax on
set cin nu si ai ts=4 sw=4 bg=dark

" custom bracket-completion
function! FuncFin()
  call feedkeys("o}\<ESC>=%$")
endfunc

function! CharMove()
  let chr=''
  echo "custom bracket-completion"
  if getchar(1)
    let chr = getchar()
    call feedkeys(nr2char(chr))
  endif
  call feedkeys("\<F2>")
endfunc

nmap <silent> <F2><TAB> :call FuncFin()<CR>
nmap <silent> <F2> :call CharMove()<CR>
imap @{ {<ESC>j<F2>
""""

" auto compile & test
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

map <F6> :call Run()<CR>
map <F5> :call RunTest()<CR>
""""

nnoremap <C-a> ggVG"+y
vnoremap <C-y> "+y
nnoremap <C-p> "+p
nnoremap <Space> :w<CR>
inoremap jk <Esc>
inoremap <buffer> {<CR> {<CR><END><CR>}<UP><END>
inoremap <buffer> for<TAB> for(int i = 0; i < ; ++i) {<CR><END><CR>}<ESC><UP><UP>f;
