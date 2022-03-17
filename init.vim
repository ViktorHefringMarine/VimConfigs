

"lua require('plugins')

let $VIMHOME = expand('<sfile>')
filetype plugin on
syntax enable
"syntax match   mySpecialSymbols "+\|-\|\*\|;\|?\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"

"################
"# Set Commands #
"################
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set ignorecase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=4
set noshowmode
set colorcolumn=80
set signcolumn=no
set cmdheight=2
set updatetime=50
set shortmess +=c
set foldcolumn=1
set pumblend=10
set pumheight=50
set showtabline=2
set invhlsearch
set incsearch
set hlsearch!

let g:neovide_transparency=0.75
let g:neovide_remember_window_size = v:true
let g:neovide_hide_mouse_when_typing=v:true
let g:neovide_cursor_vfx_mode = "railgun"

let g:python3_host_prog = 'C:/Users/Lenovo/miniconda3/envs/LSPenv/python'

if exists('g:neovide')
    set guifont=FiraCode\ Nerd\ Font:h12
else
    set guifont=Consolas:h12
endif


"##############################################################################
"# Load Plugins #
"##############################################################################
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
    Plug 'dstein64/vim-startuptime'
    "Plug 'joshdick/onedark.vim'
    "Plug 'ggandor/lightspeed.nvim'
    Plug 'navarasu/onedark.nvim'
    Plug 'ulwlu/elly.vim'
    Plug 'pmalek/toogle-maximize.vim'
    "Plug 'itmammoth/maximize.vim'
    Plug 'jiangmiao/auto-pairs'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    "Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins' } "Syn...Syntax Highlight
    Plug 'numirias/semshi'
    Plug 'sheerun/vim-polyglot'
    Plug 'gruvbox-community/gruvbox'
    Plug 'AlessandroYorba/Alduin'
    "Plug 'jeetsukumaran/vim-buffergator'
    Plug 'kassio/neoterm'
    Plug 'preservim/tagbar'
    "Plug 'preservim/nerdtree'
    Plug 'vimwiki/vimwiki'

    Plug 'glepnir/dashboard-nvim'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', {'dir':'~/.fzf', 'do':'./install --all'}
    Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

    Plug 'ryanoasis/vim-devicons'

    "Plug 'chrisbra/Colorizer'

    "Plug 'simrat39/symbols-outline.nvim'
    "Plug 'equalsraf/neovim-gui-shim'
    if has("nvim")
        Plug 'neovim/nvim-lspconfig'
        Plug 'williamboman/nvim-lsp-installer'
        "Plug 'glepnir/lspsaga.nvim'

        Plug 'nvim-lualine/lualine.nvim'
        Plug 'kyazdani42/nvim-web-devicons'


        Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
        Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
        Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

        "Plug 'prabirshrestha/asyncomplete.vim'

        Plug 'ray-x/lsp_signature.nvim'

        "Plug 'hrsh7th/nvim-cmp'
        "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        "Plug 'ms-jpq/coq_nvim'
        "Plug 'ms-jpq/coq.artifacts'
        "Plug 'ms-jpq/coq.thirdparty', {'branch':'3p'}
    endif
    Plug 'JuliaEditorSupport/julia-vim'
call plug#end()


"##############################################################################
" Plugin Related Configs
"##############################################################################
"colorscheme transparent_light_grey
"colorscheme TransparentSmooth
"colorscheme TransparentWFrame
"------------------------------------------------------------------------------
" Neorterm - kassio/neoterm
" * 1. dont remember
" * 2. Now the register can be used in the terminal that is Ctrl-R
" * 3. dont remember
let &runtimepath.=',~/.vim/bundle/neoterm'
let g:neoterm_automap_keys = '\w_thrash_1'
"------------------------------------------------------------------------------
" Auto Pairs - jiangmiao/auto-pairs
let g:matchparen_timeout = 600   "time before showing matching words.
let g:AutoPairsShortcutBackInsert = ''
let g:AutoPairsShortcutFastWrap = ''
"------------------------------------------------------------------------------
" Tagbar - preservim/tagbar ( ctags58 )
" * 1. location of the ctags executable
let g:tagbar_ctags_bin = 'C:/Users/Lenovo/MyProgramFiles/ctags58/bin/ctags.exe'
" Removed from environmental variables
" C:\Users\Lenovo\MyProgramFiles\ctags58\bin

" FileType (more info: C:\Users\Lenovo\Documents\Coding\Random\Tagbar.wiki)
" * 1. Julia Files
" * 2. Python Files
let g:tagbar_type_julia = {
    \ 'ctagstype' : 'julia',
    \ 'kinds'     : [
        \ 't:struct', 'f:function', 'm:macro', 'c:const']
    \ }
"let g:tagbar_type_python = {
"            \ 'ctagstype' : 'python',
"            \ 'kinds':[
"                \ 'd:macros:1',
"                \ 'g:enums',
"                \ 't:typedefs:0:0',
"                \ 'e:enumerators:0:0',
"                \ 'n:namespaces',
"                \ 'c:classes',
"                \ 's:structs',
"                \ 'u:unions',
"                \ 'f:functions',
"                \ 'm:members:0:0',
"                \ 'v:variables:0:0'
"            \]
"    }
" Configurations
" * 1. sort by linenumber
" * 2. show linenumbers
" * 3. position of the linenumbers displayed.
" * 4. fold-level
" * 5-7. preview-window location/positioning
let g:tagbar_sort = 0
let g:tagbar_show_linenumbers = -1  "abs ln.nr = 1, rel.ln.nr=2, global.ln.nr. = -1
let g:tagbar_show_tag_linenumbers = 1 "0:don't show, 1:show behind, 2:show infront
let g:tagbar_foldlevel = 3
let g:tagbar_previewwin_pos = 'belowright'
let g:tagbar_left = 1
let g:tagbar_width = 71
"let g:tagbar_autopreview = 1
"let g:tagbar_left = 'right'
"let gtagbar_position = 'botleft vertical'
"let g:tagbar_vertical = ''
"------------------------------------------------------------------------------
" Buffergator
let g:buffergator_viewport_split_policy = 'L'
"------------------------------------------------------------------------------
" NerdTree
let g:NERDTreeWinPos = 'left'
"------------------------------------------------------------------------------
" Mutton
"let g:mutton_min_center_width = 88
"------------------------------------------------------------------------------
" Julia-vim JuliaEditorSupport/julia-vim
"let g:latex_to_unicode_tab = "off"
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
" LSP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" prabirshrestha/asyncomplete.vim
let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"autocmd VimEnter execute ':TSUpdate'
"lua require('lua')


"lua require'lspconfig'.pyright.setup{}
"lua require('lua/Lsp-local-configs')
"lua require('C:/Users/Lenovo/AppData/Local/nvim/lua/Lsp-local-configs.lua')

" Works
lua require('Lsp-local-configs')

"let g:coq_settings = {}
"let g:coq_settings.auto_start = v:true
"let g:coq_settings.auto_start = 'shut-up'
"let g:coq_settings.completion = {}
"let g:coq_settings.completion.always = v:true
"let g:coq_settings.display = {
"            \"pum" : {"y_ratio" : 0.3},
"            \"preview" : {"border":[
"            \["", "NormalFloat"],
"            \["", "NormalFloat"],
"            \["", "NormalFloat"],
"            \[" ", "NormalFloat"],
"            \["", "NormalFloat"],
"            \["", "NormalFloat"],
"            \["", "NormalFloat"],
"            \[" ", "NormalFloat"]
"            \]
"            \}
"            \}

"""nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"""
""""-- code action
"""nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"""vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"""
"""nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"""nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"""nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
"""
"""nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"""
"""nnoremap <silent> gp <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"------------------------------------------------------------------------------

" FZF

let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}'"
            \ ."--bind ctrl-y:preview-up,ctrl-e:preview-down,"
            \ ."ctrl-b:preview-page-up,ctrl-f:preview-page-down,"
            \ ."ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,"
            \ . "shift-up:preview-top,shift-down:preview-bottom,"
            \ . "alt-up:half-page-up,alt-down:half-page-down"

let $FZF_DEFAULT_OPTS = "--preview-window 'right:57%'  --bind 'ctrl-y:preview-up,ctrl-e:preview-down,ctrl-b:preview-page-up,ctrl-f:preview-page-down' --preview 'bat --style=numbers --line-range :300 {}'"
",ctrl-e:preview-down,ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,

" Dashboard
let g:dashboard_default_executive = 'fzf'
let s:dashboard_logo = 'something'
if s:dashboard_logo == 'Hydra'
    let g:dashboard_custom_header = [
        \'',
        \'   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
        \'    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
        \'          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
        \'           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
        \'          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
        \'   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
        \'  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
        \' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
        \' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
        \'      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
        \'       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
        \'     ⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶     ',
        \'     ⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧    ',
        \'     ⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆   ',
        \'',
        \]
else
    if exists('neovide')
        let g:dashboard_custom_header = [
                \'',
                \'',
                \'',
                \'',
                \'',
                \'',
                \'',
                \'',
                \ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
                \ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
                \ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
                \ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
                \ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
                \ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
                \]
    else
        let g:dashboard_custom_header = [
        \ '',
        \ '',
        \ '',
        \ '',
        \ '',
        \ ' ██╗   ██╗ ██╗ ███╗   ███╗',
        \ ' ██║   ██║ ██║ ████╗ ████║',
        \ ' ██║   ██║ ██║ ██╔████╔██║',
        \ ' ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
        \ '  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
        \ '   ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
        \]
    endif
endif
hi DashboardCenter guifg=#8fbcbb
hi DashboardHeader guifg=#616e88
hi DashboardFooter guifg=#2e3440
"------------------------------------------------------------------------------
" Dashboard

" LeaderF

let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_CommandMap = {'<M-K>': ['<Up>'], '<M-J>': ['<Down>']}
let g:Lf_PopupPalette = {
            \'light': {
                \'Lf_hl_match': {
                    \'gui': 'NONE',
                    \'font': 'NONE',
                    \'guifg': 'NONE',
                    \'guibg': '#303136',
                    \'cterm': 'NONE',
                    \'ctermfg': 'NONE',
                    \'ctermbg': '236'
                \},
                \'Lf_hl_cursorline': {
                    \'gui': 'NONE',
                    \'font': 'NONE',
                    \'guifg': 'NONE',
                    \'guibg': '#303136',
                    \'cterm': 'NONE',
                    \'ctermfg': 'NONE',
                    \'ctermbg': '236'
                    \},
                \},
            \  'dark': {
                \'Lf_hl_popup_window': {
                    \'gui': 'NONE',
                    \'font': 'NONE',
                    \'guifg': 'NONE',
                    \'guibg': 'None',
                    \'cterm': 'NONE',
                    \'ctermfg': 'NONE',
                    \'ctermbg': '236'
                    \},
                \},
            \}
"let g:Lf_DevIconsFont = 'DroidSansMono Nerd Font Mono'
"let ambiwidth=double


"##############################################################################
"# Mappings
"# > the mappings are located in the following file
"# > "~\AppData\Local\nvim\after\plugin\set-mappings.vim
"##############################################################################
let mapleader = ' '

"##############################################################################
"# AutoCommands #
"##############################################################################

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

"If you don't want to turn 'hlsearch' on, but want to highlight all
"matches while searching, you can turn on and off 'hlsearch' with
"autocmd.  Example: >
"augroup vimrc-incsearch-highlight
"    autocmd!
"    autocmd CmdlineEnter /,\? :set hlsearch
"    autocmd CmdlineLeave /,\? :set nohlsearch
"augroup END

augroup THE_PRIMEAGEN
    autocmd!
    "--------------------------------------------------------------------------
    autocmd BufRead,BufNewFile *.jl set filetype=julia
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.wiki set filetype=vimwiki
    autocmd BufWinEnter * silent setlocal formatoptions-=cro
    autocmd BufWritePre * :call TrimWhitespace()

    autocmd BufWinEnter * noremap 't gg
    autocmd BufWinEnter * noremap 'b G
    autocmd BufWinEnter * noremap 'n /\vclass \|def <CR>
    autocmd BufWinEnter * nnoremap 'f :Files<CR>
    "--------------------------------------------------------------------------
    " FileType Plugins
    autocmd FileType vim :setlocal foldmethod=indent
    autocmd FileType python :setlocal foldcolumn=2
    autocmd FileType python :setlocal signcolumn=yes
    autocmd FileType vimwiki :setlocal norelativenumber
    "--------------------------------------------------------------------------
    autocmd BufEnter *.wiki :call LaTeXtoUnicode#Enable()
    autocmd BufLeave *.wiki :call LaTeXtoUnicode#Disable()


    "--------------------------------------------------------------------------
    " FileType Highlighting/Theme Configurations
    autocmd FileType vim :setlocal colorcolumn=
    "--------------------------------------------------------------------------
    "Not Sorted
    autocmd BufWinEnter :set pumheight=50
    "autocmd FileType python :setlocal omnifunc=v:lua.vim.lsp.omnifunc
    "autocmd FileType python :setlocal completeopt=menuone,noinsert,noselect
    autocmd FileType python :setlocal completeopt=menuone,noselect "removes double pressing enter
    autocmd FileType python :inoremap <expr> <Tab> pumvisible() ? '<Down>' : '<Tab>'
    autocmd FileType python :inoremap <expr> <S-Tab> pumvisible() ? '<Up>' : '<S-Tab>'

    autocmd FileType python :inoremap <expr> <C-x><C-x> &completeopt=='noselect,menuone' ? '<C-[>:set completeopt=noselect<Cr>:echo "Suggestion-menu off"<Cr>a' : '<C-[>:set completeopt=noselect,menuone<Cr>:echo "Suggestion-menu on"<Cr>a'
    autocmd FileType python :inoremap <expr> <F4> &completeopt=='noselect,menuone' ? '<C-[>:set completeopt=noselect<Cr>:echo "Suggestion-menu off"<Cr>a' : '<C-[>:set completeopt=noselect,menuone<Cr>:echo "Suggestion-menu on"<Cr>a'

    autocmd FileType vimwiki :inoremap <expr> <C-x><C-x> &completeopt=='menu,preview,noinsert,menuone,noselect' ? '<C-[>:set completeopt=noinsert<Cr>:echo "Suggestion-menu off"<Cr>a' : '<C-[>:set completeopt=menu,preview,noinsert,menuone,noselect<Cr>:echo "Suggestion-menu on"<Cr>a'
    autocmd FileType vimwiki :inoremap <expr> <F4> &completeopt=='menu,preview,noinsert,menuone,noselect' ? '<C-[>:set completeopt=noinsert<Cr>:echo "Suggestion-menu off"<Cr>a' : '<C-[>:set completeopt=menu,preview,noinsert,menuone,noselect<Cr>:echo "Suggestion-menu on"<Cr>a'


    " AMAZING. GoTo left-most word in the current line. If you're already on it
    "          then go further to the left
    autocmd FileType python :nnoremap <expr> 0 col('.')<=5 ? '0' : '^'

    "--------------------------------------------------------------------------
    autocmd FileType python :syn region foldImports start='"""' end='"""' fold keepend
    autocmd FileType python :syn region foldManual start='#<#' end='#>#' fold keepend

    autocmd FileType python :setlocal foldmethod=syntax
    autocmd FileType python :setlocal foldclose=all
    autocmd FileType python :setlocal shiftwidth=4

    autocmd FileType vimwiki :syn region foldImports start='"""' end='"""' fold keepend
    autocmd FileType vimwiki :setlocal foldmethod=syntax
    autocmd FileType vimwiki :setlocal foldclose=all

    autocmd FileType markdown :setlocal textwidth=80
    autocmd FileType markdown :setlocal wrap
    autocmd FileType markdown :setlocal colorcolumn=
    autocmd FileType markdown :setlocal formatoptions+=l
    autocmd FileType markdown :setlocal formatoptions-=t

    autocmd FileType vimwiki :source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/vimwiki.vim

    autocmd FileType vim nnoremap <C-p> :so %<Cr>

    autocmd FileType julia :colorscheme TransparentWFrame

    "--------------------------------------------------------------------------
augroup END

filetype off
let &runtimepath.= ', '. stdpath('data') . '/plugged/neoterm'
let g:neoterm_eof="\r"
let g:neoterm_autoscroll=1
filetype plugin on


"##############################################################################
" Gui Configurations

"hi Normal guibg=none ctermbg=none
"hi LineNr guibg=none ctermbg=none
"hi Folded guibg=none ctermbg=none
"hi NonText guibg=none ctermbg=none
"hi SpecialKey guibg=none ctermbg=none
"hi VertSplit guibg=none ctermbg=none
"hi SignColumn guibg=none ctermbg=none
"hi EndOfBuffer guibg=none ctermbg=none guifg=black blend=100






"##############################################################################
" Source files

source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/SidePannel.vim
"source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/Other.vim
"source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/markdown_stuff.vim
source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/vimwiki.vim

colorscheme melange1
