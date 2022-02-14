

"Lightspeed mappings
"unmap z
"unmap Z
"unmap x
"unmap X
"unmap t
"unmap T
"unmap f
"unmap F
"unmap ;
"unmap ,
"iunmap <Tab>

let b:cow="cow"
if b:cow=="horse"
    "Coc not used
    unmap \f
endif





"iunmap <M-b>   disabel - AutoPairsBackInsert()  g:AutoPairsShortcutBackInsert = ''
"iunmap <M-e>   disabel - AutoPairsFastWrap()    g:AutoPairsShortcutFastWrap = ''


"Move in Insert Mode (Alt-key)

imap <M-h> <Left>
imap <M-j> <Down>
imap <M-k> <Up>
imap <M-l> <Right>
imap <M-b> <ESC>bi
imap <M-e> <ESC>ea

"-------------------------------
" Command mode
"Move in Comand Mode (Alt-key)
cmap <M-h> <Left>
cmap <M-l> <Right>
cmap <M-b> <Home>
cmap <M-e> <End>


cmap <C-k> <Up>
cmap <C-j> <Down>

cmap <C-v> <C-R>+

nnoremap <silent> <Space>f :<C-U>LeaderfFile<CR>
"-------------------------------
"-------------------------------
if  b:cow=="cow"
    "SidePanel - <C-9> - Normal Mode
    nnoremap <C-9><C-n> :call SidePanelToggleManagement("NerdTree")<CR>
    nnoremap <C-9><C-t> :call SidePanelToggleManagement("Tagbar")<CR>
    nnoremap <C-9><C-b> :call SidePanelToggleManagement("Buffergator")<CR>
    nnoremap <C-9><C-s> :call SidePanelToggleManagement("SidePanel")<CR>
    "SidePanel - <C-8> - Normal Mode
    nnoremap <C-8><C-n> :call SidePanelToggleManagement("NerdTree")<CR>:winc h<CR>
    nnoremap <C-8><C-t> :call SidePanelToggleManagement("Tagbar")<CR>:winc h<CR>
    nnoremap <C-8><C-b> :call SidePanelToggleManagement("Buffuergator")<CR>:winc h<CR>
    nnoremap <C-8><C-s> :call SidePanelToggleManagement("SidePanel")<CR>
    "<Esc>    - Normal Mode Mode
    nnoremap <C-9><C-j> <Esc>


    "SidePanel - <C-9> - Command Mode
    cmap <C-9><C-j> <Esc>

    "SidePanel - <C-9> - Insert Mode
    "imap <C-9><C-n> <Esc>l:call SidePanelToggleManagement("NerdTree")<CR>
    "imap <C-9><C-t> <Esc>l:call SidePanelToggleManagement("Tagbar")<CR>
    "imap <C-9><C-b> :call SidePanelToggleManagement("Buffergator")<CR>
    "SidePanel - <C-8> - Insert Mode
    "imap <C-9><C-n> <Esc>l:call SidePanelToggleManagement("NerdTree")<CR>
    "imap <C-8><C-n> <Esc>l:call SidePanelToggleManagement("NerdTree")<CR>:winc h<CR>
    "imap <C-8><C-t> <Esc>l:call SidePanelToggleManagement("Tagbar")<CR>:winc h<CR>
    "imap <C-9><C-b> <Esc>l:call SidePanelToggleManagement("Buffergator")<CR>:winc h<CR>
    "<Esc>    - Insert Mode
    "imap <C-9><C-j> <Esc>l
    "imap <C-8><C-j> <Esc>l:winc h<CR>
    "imap <C-8><C-;> <Esc>l:
    "Open nerdtree in $MYVIMRC
endif
if  b:cow=="cow"
    "SidePanel - <C-9> - Normal Mode
    "SidePanel - <leader> - Normal Mode
    "<Esc>    - Normal Mode Mode
    nnoremap \j <Esc>


    "SidePanel - <leader> - Command Mode
    "cmap <leader>j <Esc>

    "SidePanel - <leader> - Insert Mode
    "imap <leader>n <Esc>l:call SidePanelToggleManagement("NerdTree")<CR>
    "imap <leader>t <Esc>l:call SidePanelToggleManagement("Tagbar")<CR>
    "imap <leader>b :call SidePanelToggleManagement("Buffergator")<CR>
    "SidePanel - <leader> - Insert Mode
    "imap <leader>n <Esc>l:call SidePanelToggleManagement("NerdTree")<CR>
    "imap <leader>n <Esc>l:call SidePanelToggleManagement("NerdTree")<CR>:winc h<CR>
    "imap <leader>t <Esc>l:call SidePanelToggleManagement("Tagbar")<CR>:winc h<CR>
    "imap <leader>b <Esc>l:call SidePanelToggleManagement("Buffergator")<CR>:winc h<CR>
    "<Esc>    - Insert Mode
    "imap <leader>j <Esc>l
    "imap <leader>j <Esc>l:winc h<CR>
    "imap <leader>; <Esc>l:
    "Open nerdtree in $MYVIMRC
endif




"##########################################################################
"# Normal Mode
"nnoremap <leader>dh :DashboardFindHistory<CR>
"nnoremap <leader>dw :DashboardFindWord<CR>
"nnoremap <leader>df :DashboardFindFile<CR>
"nnoremap <leader>dm :DashboardJumpMarks<CR>
"nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <silent> \n :call SidePanelToggleManagement("NerdTree")<CR>
nnoremap <silent> \t :call SidePanelToggleManagement("Tagbar")<CR>
nnoremap <silent> <leader>t :call SidePanelToggleManagement("Tagbar")<CR>
nnoremap <silent> \s :call SidePanelToggleManagement("SidePanel")<CR>
nnoremap <silent> \p :call SidePanelToggleManagement("PythonTerminal")<CR>
nnoremap <silent> \q :call EchoStatus()<CR>

"nnoremap \cd :cd %:p:h<CR>
nnoremap \# :b#<Cr>
nnoremap \i :call Open_Init_Vim()<CR>

nnoremap <C-9><C-n> :call SidePanelToggleManagement("NerdTree")<CR>
nnoremap <silent> <Right> :execute 'wincmd <'<CR>
nnoremap <silent> <Left>  :execute 'wincmd >'<CR>
nnoremap <silent> <M-h> :execute 'wincmd >'<CR>
nnoremap <silent> <M-j> :execute 'wincmd -'<CR>
nnoremap <silent> <M-k> :execute 'wincmd +'<CR>
nnoremap <silent> <M-l> :execute 'wincmd <'<CR>

"nnoremap ci( cil
nnoremap cil ci(



"##########################################################################
"# Command Mode
cmap <M-h> <Left>
cmap <M-l> <Right>
cmap <M-b> <Home>
cmap <M-e> <End>
cmap <C-k> <Up>
cmap <C-j> <Down>
"##########################################################################
"# Visual Mode
vmap <S-f> :'<,'>fold<CR>
"##########################################################################
"# Insert Mode
"inoremap <silent> <C-k>d Ã°
"inoremap <silent> <C-k>o Ã¶
"inoremap <silent> <C-k>ae Ã¦   " This is already default.
inoremap <silent> <C-Enter> <Esc>:w<CR>:call NeotermTerminalPython(@%, winnr(), 0)<CR>




inoremap <expr> <C-f> pumvisible() ? '<C-x><C-f>' : '<C-f>'
"inoremap <expr> <C-u> pumvisible() ? '<C-x><C-u>' : '<C-u>'
inoremap <expr> <C-o> pumvisible() ? '<C-x><C-o>' : '<C-o>'

inoremap <expr> <Tab> pumvisible() ? '<Down>' : '<Tab>'
inoremap <expr> <S-Tab> pumvisible() ? '<Up>' : '<S-Tab>'

inoremap <F12> <C-x><C-o>
inoremap <C-o> <C-x><C-o>

if exists('neovide')
    nnoremap <silent> <C-a>c :call fzf#run({'source': GetCommands(),'sink': function('HandleCommand'),'options': '-m'} )<CR>
    "nnoremap <Tab> :b#<CR>
else
    nnoremap <leader>v <C-v>
endif

"autocmd BufWinEnter * nnoremap <leader>cd :cd %:p:h<CR>
"nnoremap <leader>i :e C:\Users\Lenovo\AppData\Local\nvim\init.vim<CR>
" Change size of side panel

"nnoremap <silent> <C-h> :winc h<CR>
"nnoremap <silent> <C-j> :winc j<CR>
"nnoremap <silent> <C-k> :winc k<CR>
"nnoremap <silent> <C-l> :winc l<CR>

"nnoremap <M-l><M-f> :LeaderfFile<CR>
"nnoremap <M-l><M-c> :LeaderfCommand<CR>

"nnoremap <leader>lf :LeaderfFile<CR>
"nnoremap <leader>lc :LeaderfCommand<CR>
nnoremap \f :LeaderfFile<CR>
nnoremap \c :LeaderfCommand<CR>
nnoremap \r :Rg<CR>
nnoremap \h :History<CR>
nnoremap \m :Marks<CR>
nnoremap <leader>c :cd %:p:h<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fw :Windows<CR>
nnoremap <leader>fc :Commands<CR>
nnoremap <leader>fn :Maps<CR>



nnoremap <M-[> :bp<CR>
nnoremap <M-]> :bn<CR>



