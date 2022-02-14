
let g:vimwiki_global_ext = 0

let g:vimwiki_conceal_pre = 1
"Vimwiki: syntax allowed are ['default', 'markdown', 'media', 'mediawiki'].
"See :h vimwiki-options-syntax

" Wikis (the root~ is C:\Users\Lenovo\)
" 1. Main Wiki      ~/VimWikiMain/
" 2. Corona         ~/VimWikiMain/Corona/
" 3. Julia          ~/Documents/Coding/Julia/
" 4. Random         ~/Documents/Coding/Random/
" 5. MM_2022        ~/Documents/Coding/MM_2022/
" 6. Hefring        ~/Documents/Coding/Hefring/wiki
" 7. Python         ~/Documents/Coding/Python/wiki


"Main Wiki
let wiki_main = {}
let wiki_main.path   = '~/VimWikiMain/'
let wiki_main.ext    = '.wiki'
let wiki_main.syntax = 'default'
let wiki_main.nested_syntaxes = {'python':'python', 'c++': 'cpp', 'julia':'julia', 'vim':'vim'}


"Corona
let wiki_corona = {}
let wiki_corona.path   = '~/VimWikiMain/Corona'
let wiki_corona.ext    = '.wiki'
let wiki_corona.syntax = 'default'
let wiki_corona.nested_syntaxes = {}


"Julia Wiki
let wiki_julia = {}
let wiki_julia.path  = '~/Documents/Coding/Julia/'
let wiki_julia.ext   = '.wiki'
let wiki_julia.syntax = 'default'
let wiki_julia.nested_syntaxes = {'python':'python', 'c++':'cpp', 'julia':'julia'}


"Independent Random Notes
let wiki_IR = {}
let wiki_IR.path    = '~/Documents/Coding/Random/'
let wiki_IR.ext     = '.wiki'
let wiki_IR.syntax  = 'default'
let wiki_IR.nested_syntaxes = {'python':'python', 'c++': 'cpp', 'julia':'julia', 'vim':'vim'}

"Mathematical Modelling Course Notes
let wiki_MM = {}
let wiki_MM.path    = '~/Documents/Coding/MM_2022/'
let wiki_MM.ext     = '.wiki'
let wiki_MM.syntax  = 'default'
let wiki_MM.nested_syntaxes  = {'julia':'julia'}
"let wiki_MM.auto_tags = 1

"Hefring Notes
let wiki_Hefring = {}
let wiki_Hefring.path           = '~/Documents/Coding/Hefring/wiki/'
let wiki_Hefring.ext            = '.wiki'
let wiki_Hefring.syntax         = 'default'
let wiki_Hefring.nested_syntaxes  = {'python':'python'}

let wiki_Python = {}
let wiki_Python.path            = '~/Documents/Coding/Python/wiki/'
let wiki_Python.ext             = '.wiki'
let wiki_Python.syntax          = 'default'
let wiki_Python.nested_syntaxes   = {'python':'python'}

"All My Wikis
let g:vimwiki_list = [
\   wiki_main,
\   wiki_corona,
\   wiki_julia,
\   wiki_IR,
\   wiki_MM,
\   wiki_Hefring,
\   wiki_Python
\]


autocmd BufNewFile,BufRead *.wiki set filetype=wiki
autocmd FileType wiki :setlocal wrap
autocmd FileType wiki :setlocal linebreak
autocmd FileType wiki :setlocal breakindent
autocmd FileType wiki :setlocal formatoptions=l
autocmd FileType wiki :setlocal nonumber
autocmd FileType wiki :setlocal foldcolumn=4
autocmd FileType wiki :setlocal shiftwidth=2
autocmd FileType wiki :let g:vimwiki_url_maxsave=0
autocmd FileType wiki :highlight FoldColumn guibg=NONE "guifg=white
let g:vimwiki_url_maxsave = 0


"autocmd BufWinEnter,BufRead,FileType wiki :iunmap [[
"autocmd FileType wiki :inoremap <C-[><C-[> [[<Esc><Plug>ZettelSearchMap


au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
au VimEnter,BufRead,BufNewFile *.idr set filetype=idris
au VimEnter,BufRead,BufNewFile *.lidr set filetype=lidris
au VimEnter,BufRead,BufNewFile *.lfe set filetype=lfe



