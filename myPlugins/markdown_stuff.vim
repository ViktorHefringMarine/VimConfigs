"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Jump To next heading (Markdown files)
function! s:JumpToNextHeading(direction, count)
    let col = col(".")

    silent execute a:direction == "p" ? '?^#' : '/^#'

    if a:count > 1
        silent execute "normal! " . repeat("n", a:direction == "up" && col != 1 ? a:count : a:count - 1)
    endif

    silent execute "normal! " . col . "|"

    unlet col
endfunction



autocmd BufNewFile,BufRead *.md set filetype=markdown

autocmd FileType markdown nnoremap <buffer> <silent> ]] :<C-u>call <SID>JumpToNextHeading("down", v:count1)<CR>
autocmd FileType markdown nnoremap <buffer> <silent> [[ :<C-u>call <SID>JumpToNextHeading("up",   v:count1)<CR>


