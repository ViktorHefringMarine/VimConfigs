



" Index
" 'p - Plugins
" 'f - FZF
" '1 - Tagbar
" 'l - LeaderF

" init.vim





" Remember
" vimwiki: change list in insert mode, by using <C-L><C-K>
" ]b and [b cycle buffers
"if exists($CONDA_DEFAULT_ENV) == 0
"    call CondaInit('base')
"endif

let $VIMHOME = expand('<sfile>')




filetype plugin on
syntax enable
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
"set foldmethod=indent
if exists('neovide')
    set cmdheight=2
else
    set cmdheight=1
endif
set updatetime=50
set shortmess +=c
set nohlsearch
set foldcolumn=1
"PopUp menu
set pumblend=10
set pumheight=50
set showtabline=2
"set pumwidth=..


if $CONDA_DEFAULT_ENV == ''
    let g:CondaEnv = 'GDAL'
endif


let g:neovide_transparency=0.75
let g:neovide_remember_window_size = v:true



let g:python3_host_prog = 'C:/Users/Lenovo/miniconda3/envs/LSPenv/python.exe'

"set guifont=Consolas:h13
"set guifont=Consolas:h13

if exists('g:neovide')
    " to check out the available fonts then checkout the powershell command
    " > [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
    " > (New-Object System.Drawing.Text.InstalledFontCollection).Families
    " source: https://superuser.com/questions/760627/how-to-list-installed-font-families
    " Not working
    " - set guifont=FiraMono\ Nerd\ Font\ Mono:h12
    " Working
    "set guifont=MesloLGMDZ\ Nerd\ Font:h12
    "set guifont=MesloLGL\ Nerd\ Font:h12
    "set guifont=Consolas
    "set guifont=Iosevka
    "set guifont=InconsolataLGC\ NF
    "set guifont=FiraCode\ Nerd\ Font:h12
    "set guifont=JetBrainsMono\ Nerd\ Font:h12
    "set guifont=Hack\ Nerd\ Font:h12

    "Usage History
    "set guifont=Hack\ Nerd\ Font:h12
    "set guifont=JetBrainsMono\ Nerd\ Font:h12
    set guifont=FiraCode\ Nerd\ Font:h12
else
    set guifont=Consolas:h12
endif


"##############################################################################
"# Load Plugins #
"##############################################################################
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
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
    Plug 'preservim/nerdtree'
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

        Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
        Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
        Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

        Plug 'prabirshrestha/asyncomplete.vim'

        Plug 'ray-x/lsp_signature.nvim'

        "Plug 'hrsh7th/nvim-cmp'
        "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        "Plug 'ms-jpq/coq_nvim'
        "Plug 'ms-jpq/coq.artifacts'
        "Plug 'ms-jpq/coq.thirdparty', {'branch':'3p'}
    endif
    "Plug 'JuliaEditorSupport/julia-vim'
call plug#end()


"##############################################################################
" Plugin Related Configs
"##############################################################################

"colorscheme alduin_transparent
colorscheme transparent_light_grey
"------------------------------------------------------------------------------
" Neorterm - kassio/neoterm
" * 1. dont remember
" * 2. Now the register can be used in the terminal that is Ctrl-R
" * 3. dont remember
let &runtimepath.=',~/.vim/bundle/neoterm'
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tnoremap <Esc> <C-\><C-n>
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

"let s:dashboard_logo = 'Neovim'

let s:dashboard_logo = 'something'

if s:dashboard_logo == 'Doom'
    let g:dashboard_custom_header =<< trim END
    =================     ===============     ===============   ========  ========
    \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
    ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
    || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
    ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
    || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
    ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
    || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
    ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
    ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
    ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
    ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
    ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
    ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
    ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
    ||.=='    _-'                                                     `' |  /==.||
    =='    _-'                        N E O V I M                         \/   `==
    \   _-'                                                                `-_   /
     `''                                                                      ``'
    END
elseif s:dashboard_logo == 'Hydra'
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
"elseif s:dashboard_logo == 'Hydra'
else
    if exists('g:neovide')
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
        \ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
        \ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
        \ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
        \ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
        \ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
        \ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
        \]
    endif
endif


hi DashboardCenter guifg=#8fbcbb
hi DashboardHeader guifg=#616e88
hi DashboardFooter guifg=#2e3440


"let g:dashboard_custom_shortcut_icon = {}
"let g:dashboard_custom_shortcut_icon['last_session'] = ''
"let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
"let g:dashboard_custom_shortcut_icon['find_file'] = ' '
"let g:dashboard_custom_shortcut_icon['new_file'] = ' '
"let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
"let g:dashboard_custom_shortcut_icon['find_word'] = ' '
"let g:dashboard_custom_shortcut_icon['book_marks'] = ' '





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

augroup THE_PRIMEAGEN
    autocmd!
    "--------------------------------------------------------------------------
    autocmd BufRead,BufNewFile *.jl set filetype=julia
    autocmd BufRead,BufNewFile *.wiki set filetype=vimwiki
    autocmd BufWinEnter * silent setlocal formatoptions-=cro
    autocmd BufWritePre * :call TrimWhitespace()
    "--------------------------------------------------------------------------
    " FileType Plugins
    autocmd FileType vim :setlocal foldmethod=indent
    autocmd FileType python :setlocal foldcolumn=2
    autocmd FileType python :setlocal signcolumn=yes
    autocmd FileType vimwiki :setlocal norelativenumber
    "--------------------------------------------------------------------------
    " FileType Highlighting/Theme Configurations
    autocmd FileType vim :setlocal colorcolumn=
    "--------------------------------------------------------------------------
    "Not Sorted
    autocmd BufWinEnter :set pumheight=50
    autocmd FileType python :setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd FileType python :setlocal completeopt=menuone,menuone,noinsert,noselect
    autocmd FileType python :inoremap <expr> <Tab> pumvisible() ? '<Down>' : '<Tab>'
    autocmd FileType python :inoremap <expr> <S-Tab> pumvisible() ? '<Up>' : '<S-Tab>'
    "--------------------------------------------------------------------------
    autocmd FileType python :syn region foldImports start='"""' end='"""' fold keepend
    autocmd FileType python :setlocal foldmethod=syntax
    autocmd FileType python :setlocal foldclose=all

    "--------------------------------------------------------------------------
augroup END


"##############################################################################
"# Highlighting #
"##############################################################################
" Alduin Background Colors
" RED:     #2f1814 #2f0d07 #2a0d07 #270d08
" Yellow to Orange:  #181304  #181004  #180D04

"highlight Normal guibg=None
"highlight Folded guibg=None
"highlight FoldColumn guibg=None guifg=#928374
"highlight SignColumn guibg=None
"highlight ColorColumn ctermfg=237 ctermbg=237  guibg=#3c3836 guifg=#a89984  "gui=reverse

"hi Normal guibg=#1f1614
"let g:neovide_transparency=0.82

"hi Normal guibg=#42221C
"hi pythonFunction guifg=#b598a5
"hi pythonFunctionCall guifg=#b598a5
"hi semshiImported guifg=#d29958
"hi semshiBuiltin ctermfg=5 gui=italic guifg=#ba9734
"hi semshiBuiltin ctermfg=5 gui=italic guifg=#bed077
"hi Statement guifg=#9f9f9f
"let g:neovide_transparency=0.7
"##############################################################################
filetype off
let &runtimepath.= ', '. stdpath('data') . '/plugged/neoterm'
let g:neoterm_eof="\r"
let g:neoterm_autoscroll=1
filetype plugin on


"##############################################################################
" Gui Configurations

"if exists(':GuiFont')
"endif
"source 'C:/Users/Lenovo/scoop/apps/neovim/current/share/nvim-qt/runtime'
"source 'C:/Users/Lenovo/scoop/apps/neovim/current/share/nvim-qt/runtime/plugin/nvim_gui_shim.vim'
"function Tester()
"    source 'C:/Users/Lenovo/scoop/apps/neovim/current/share/nvim-qt/runtime/plugin/nvim_gui_shim.vim'
    "if exists(':GuiPopupmenu')
    "    source 'C:/Users/Lenovo/scoop/apps/neovim/current/share/nvim-qt/runtime/plugin/nvim_gui_shim.vim'
    "endif
"endfunction
"au VimEnter :call Tester()




function NeoTheme()
    hi Normal guibg=none ctermbg=none
    hi LineNr guibg=none ctermbg=none
    hi Folded guibg=none ctermbg=none
    hi NonText guibg=none ctermbg=none
    hi SpecialKey guibg=none ctermbg=none
    hi VertSplit guibg=none ctermbg=none
    hi SignColumn guibg=none ctermbg=none
    hi EndOfBuffer guibg=none ctermbg=none
endfunction

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
source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/Other.vim
source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/markdown_stuff.vim
source C:/Users/Lenovo/AppData/Local/nvim/myPlugins/vimwiki.vim









lua << EOF

EOF

"<SNR>5_SynSet









