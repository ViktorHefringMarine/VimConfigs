set bg=light
runtime colors/gruvbox.vim
let g:neovide=0.7

hi VertSplit guibg=none
hi Folded guibg=none
hi FoldColumn guibg=none


hi pythonFunctionCall guifg=none

highlight semshiGlobal gui=bold guifg=#b57614
highlight semshiBuiltin gui=italic guifg=#af3a03
highlight semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiImported guifg=#d29958 cterm=bold gui=bold
"highlight semshiImported        ctermfg=214 guifg=#d5852a cterm=bold gui=bold
highlight semshiAttribute ctermfg=LightGray  guifg=#FFCE45
highlight semshiBuiltin ctermfg=DarkMagenta  guifg=#FFCE45
highlight semshiErrorChar ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#d70000
highlight semshiErrorSign ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#d70000
highlight semshiUnresolved ctermfg=None ctermbg=None  guifg=None guibg=None gui=None
highlight semshiSelected guifg=none guibg=#404040 blend=50
"hi semshiBuiltin ctermfg=5 gui=italic guifg=#ba9734
hi semshiBuiltin ctermfg=5 gui=italic guifg=#bed077
sign define semshiError text=E> texthl=semshiErrorSign

highlight semshiGlobal gui=bold guifg=None
highlight semshiParameter gui=italic guifg=#b3a490




