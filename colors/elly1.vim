


"lua require('onedark').setup()
"lua require('onedark').colorscheme()

runtime colors\elly.vim


if exists('g:neovide')
    let g:neovide_transparency=0.88
    "hi Normal guibg=#070707
    "hi Normal guibg=#1a1a1a
    "hi normal guibg=#23282b
    hi normal guifg=#9a9a9a guibg=#1e2225
else
    pass
    "hi Normal guibg=none
    "hi Normal guibg=#1c1c1c
    "hi Normal guibg=#303434
    "hi Normal guibg=#333333
endif

highlight CursorLine guibg=None
"highlight CursorLineNr guifg=#d5852a

highlight LineNrAbove guifg=#5a5a5a
highlight LineNrBelow guifg=#5a5a5a
highlight LineNr ctermfg=238 ctermbg=16 guifg=#9a9a9a guibg=none
highlight FoldColumn        guibg=None
highlight SignColumn        guibg=None
"highlight String            guibg=None
highlight Folded            guibg=None guifg=#696969
highlight ColorColumn ctermfg=237 ctermbg=237  guibg=#3c3836 guifg=#a89984  "gui=reverse


hi TablineFill guifg=none guibg=none gui=none
hi TabLine guifg=none guibg=none gui=none
hi semshiParameter ctermfg=75 gui=italic guifg=#737373
hi semshiImported cterm=bold ctermfg=214 guifg=#798362
hi semshiBuiltin ctermfg=207 gui=italic guifg=#9b7057
hi semshiSelected ctermbg=none guibg=#253340 guifg=none

"syntax match   mySpecialSymbols "+\|-\|\*\|;\|?\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
hi mySpecialSymbols guifg=#977375
hi semshiGlobal guifg=#978373
hi Function guifg=#978373
hi pythonFunctionCall guifg=#978373
hi String guifg=#6c6283
hi include guifg=#8d7856
hi pythonOperator guifg=#8d7856

hi StatusLineNC guibg=#3c3836




hi Statement guifg=#8d7856
hi Comment guifg=#6a6a6a
