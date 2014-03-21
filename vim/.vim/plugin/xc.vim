if exists("xxxcoder")
    finish
endif
let xxxcoder = 1

command! -n=1 HF :call s:OpenHelpFile('<args>')

function! s:OpenHelpFile(name)
    exec "silent edit /usr/share/vim/vim73/doc/" . a:name . ".txt"
endfu


" jump backwards to the function name
fun Backname()
    let s:num = search('^\h\w\+.*[^0-9A-Za-z_\x20\t:*]', 'b')
    let s:num = search('\h\w\+\s*[^0-9A-Za-z_\x20\t:*]', 'c') 
endfun
