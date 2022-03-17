set bg=dark
runtime colors\melange.vim



if exists('g:neovide')
    let g:neovide_transparency=0.86
endif


" Syntaxes:
" * pythonImport:    {import}, {from} , NOT {as}
" * semshiImported:
"   * given:         from folder import Module, Class
"   * higlighted     {Module}, {Class}
" * semshiBuiltin:   {__name__}, {open}, {IOError}, {print}
" * semshiSelected:  the variable/module/function/etc being hovered (that is, the word the cursor is located on)




highlight normal guifg=#d8cdc0

highlight search guifg=none guibg=#63584c

highlight pythonIndentError guifg=none guibg=none
highlight pythonSpaceError  guifg=none guibg=none


highlight pythonImport guifg=#e49b5d


"highlight semshiImported guifg=#D5971D
highlight semshiImported guifg=#e479ab
highlight semshiParameter gui=italic
highlight semshiBuiltin guifg=none gui=italic             "
highlight semshiSelected guifg=none guibg=#63584c
highlight semshiAttribute guifg=none

highlight LineNrAbove guifg=#d8cdc0
highlight LineNrBelow guifg=#d8cdc0
highlight LineNr ctermfg=238 ctermbg=16 guifg=#d8cdc0 guibg=none gui=bold

highlight FoldColumn        guibg=None
highlight SignColumn        guibg=None
highlight String            guibg=None
highlight Folded            guibg=None guifg=#696969
highlight ColorColumn ctermfg=237 ctermbg=237  guibg=#3c3836 guifg=#a89984  "gui=reverse







augroup ColorGroup
    autocmd!
    "autocmd InsertEnter * highlight semshiUnresolved cterm=none      ctermfg=none gui=none     guifg=none
    "autocmd InsertLeave * highlight semshiUnresolved cterm=underline ctermfg=226  gui=underline guifg=#ffff00

    autocmd InsertEnter * highlight semshiUnresolved cterm=none      ctermfg=none gui=none      guifg=none guibg=none
    autocmd InsertLeave * highlight semshiUnresolved cterm=underline ctermfg=226  gui=underline guifg=none guibg=#683f3b
augroup END
