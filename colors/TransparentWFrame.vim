"##############################################################################
" ColorScheme Specific
"##############################################################################
" very red brackets
"let g:alduin_Shout_Fire_Breath = 1
" dont remember
"let g:alduin_Shout_Aura_Whisper = 1

" if 0 then highlight Strings else not
let g:alduin_Shout_Animal_Allegiance = 0
" background colors
let g:alduin_Shout_Dragon_Aspect = 0
let g:alduin_Shout_Become_Ethereal = 1



"##############################################################################
" General
"##############################################################################

set background=dark
runtime colors/alduin.vim


if exists('g:neovide')
    let g:neovide_transparency=0.8
    "hi Normal guibg=#070707
    hi Normal guibg=#1a1a1a
else
    "hi Normal guibg=none
    "hi Normal guibg=#1c1c1c
    "hi Normal guibg=#303434
    hi Normal guibg=#333333
endif

highlight CursorLine guibg=None
highlight CursorLineNr guifg=#d5852a

highlight LineNrAbove guifg=#999999
highlight LineNrBelow guifg=#999999
highlight LineNr ctermfg=238 ctermbg=16 guifg=#cccccc guibg=none


highlight Include       guifg=#878787

highlight String guibg=#262626

"set cursorline
"highlight CursorLine   guibg=#262626
"highlight CursorLineNr guibg=#262626

highlight FoldColumn        guibg=None
highlight SignColumn        guibg=None
highlight String            guibg=None
highlight Folded            guibg=None guifg=#696969
highlight ColorColumn ctermfg=237 ctermbg=237  guibg=#3c3836 guifg=#a89984  "gui=reverse

hi Statement guifg=#9f9f9f
" Popup menu :
highlight Pmenu guifg=#dfaf87 guibg=#2a2a2a
highlight PmenuThumb guifg=#af8787 guibg=#dfaf87
highlight PmenuSel guifg=#ffdf87 guibg=#5f5f87
highlight PmenuSbar guifg=#ffdf87 guibg=#2a2a2a

" mappings text when you write ':imap<CR>'
highlight SpecialKey ctermfg=102 guifg=#878787
"
highlight NormalFloat guibg=None blend=40
highlight VerticalSplit guibg=None blend=40
highlight MsgSeparator guibg=None
highlight FloatShadow guibg=None
highlight FloatBorder guibg=None
"##############################################################################
" Julia
"##############################################################################
"highlight link juliaMacro CocCodeLens

highlight link juliapardelim delimiter
highlight link juliasemicolon operator
highlight link juliafunctioncall Function
highlight juliaBaseTypeNum guifg=#fabd2f guibg=#1c1c1c


"##############################################################################
" Semshi
"##############################################################################
"highlight semshiUnresolved ctermfg=187 ctermbg=None gui=None guifg=#f9ebae guibg=None
"highlight semshiParameter guifg=#928374
"highlight semshiAttribute guifg=#928374
"highlight semshiSelected guibg=#636363

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



"##############################################################################
" Python
"##############################################################################
highlight pythonParameterUnused ctermfg=187 ctermbg=None gui=None guifg=#636363 guibg=None
autocmd FileType python :highlight Error guibg=None gui=None

highlight pythonClass  gui=bold guifg=#d5852a
highlight pythonOperator guifg=#928374
highlight pythonExtraOperator guifg=#928374
highlight pythonExtraPseudoOperator guifg=#928374
highlight pythonBrackets guifg=#928374

hi pythonFunction gui=bold guifg=#b598a5
hi pythonFunctionCall gui=none guifg=#b598a5

highlight pythonSpaceError guibg=None
highlight pythonIndentationError guibg=None

"##############################################################################
" Vim-Wiki
"##############################################################################
highlight VimwikiHeader1       cterm=bold ctermfg=100 gui=bold guifg=#969011 guibg=None
highlight VimwikiHeader2       cterm=bold ctermfg=100 gui=bold guifg=#608DAB guibg=None
highlight VimwikiHeader3       cterm=bold ctermfg=100 gui=bold guifg=#9999dc guibg=None
highlight VimwikiHeader4       cterm=bold ctermfg=100 gui=bold guifg=#ff5d27 guibg=None
highlight VimwikiHeader5       cterm=bold ctermfg=100 gui=bold guifg=#ffaf00 guibg=None
highlight VimwikiHeaderChar    cterm=bold ctermfg=223 gui=bold guibg=None

"##############################################################################
" Changes
"##############################################################################


"23.jan -
" From now on, every local code will be imported as modules
" except types (i.e. classes)

"highlight CocUnusedHighlight guifg=#97687a guibg=None
"highlight Conceal guifg=#cd564b guibg=None
"highlight CocHintSign guifg=#cd564b
"highlight CocUnusedHighlight gui=italic,underline guifg=#cd564b
"highlight CocUnusedHighlight guifg=None





"hi StatusLine   guifg=#ffce45 guibg=#5f5f87
"hi StatusLineNC guifg=grey guibg=#5f5f87

hi StatusLine guifg=#8a8a8a guibg=#404040
hi StatusLineNC guifg=#404040 guibg=#404040
"hi StatusLineNC guifg=#6a6a6a guibg=#404040

hi NormalFloat  blend=20 "guibg=#484867
hi FloatBorder gui=none guifg=#dfaf87 guibg=none
hi VertSplit guibg=None



hi TabLineFill guibg=none
hi TabLineSel  guibg=none
hi TabLine     guibg=none

hi DiagnosticUnderlineHint gui=undercurl guisp=Grey

hi NormalFloat guibg=#070707 blend=20
hi FloatBorder guibg=#070707
hi Conceal guibg=None

" If --multigrid

" hi FloatBorder blend=100 guifg=#dfaf87 guibg=#343434
" hi NormalFloat blend=100 guifg=#E9E0C8 guibg=#232323

" Python DocStrings
hi foldImports ctermfg=222 ctermbg=233 guifg=#ffdf87 guibg=None


"autocmd FileType python :hi lualine_a_command guibg=#b598a5
"autocmd FileType python :hi lualine_a_command guibg=#d29958


"let g:neovide_transparency=0.79
let g:neovide_transparency=0.84
let g:neovide_floating_opacity=0.65
let g:neovide_floating_blue=v:true
hi VertSplit guifg=#3c3836 guibg=#3c3836

hi ColorColumn guifg=none guibg=#404040
highlight VertSplit   guifg=#404040 guibg=#404040
highlight lualine_c_inactive  guifg=#a89984 guibg=#404040
highlight StatusLineNC  guifg=#a89984 guibg=#404040
highlight TabLineFill  guifg=#a89984 guibg=#404040
highlight TabLineSel  gui=bold guifg=#282828 guibg=#a89984
"nnoremap : :hi ColorColumn guibg=#7c6f64<CR>:hi VertSplit guibg=#7c6f64 guifg=#7c6f64<CR>:
autocmd InsertEnter * highlight ColorColumn guibg=#504945
autocmd InsertEnter * highlight VertSplit   guifg=#504945 guibg=#504945
autocmd InsertEnter * highlight lualine_c_inactive  guifg=#ebdbb2 guibg=#504945
autocmd InsertEnter * highlight StatusLineNC  guifg=#ebdbb2 guibg=#504945
autocmd InsertEnter * highlight TabLineFill  guifg=#ebdbb2 guibg=#504945
autocmd InsertEnter * highlight TabLineSel  gui=bold guifg=#282828 guibg=#83a598

autocmd InsertLeave * highlight ColorColumn guibg=#404040
autocmd InsertLeave * highlight VertSplit   guifg=#404040 guibg=#404040
autocmd InsertLeave * highlight lualine_c_inactive  guifg=#a89984 guibg=#404040
autocmd InsertLeave * highlight StatusLineNC  guifg=#a89984 guibg=#404040
autocmd InsertLeave * highlight TabLineFill  guifg=#a89984 guibg=#404040
autocmd InsertLeave * highlight TabLineSel  gui=bold guifg=#282828 guibg=#a89984

