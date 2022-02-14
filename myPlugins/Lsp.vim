"lua require('lspconfig').pyright.setup{ on_attach=require'completion'.on_attach }
autocmd BufEnter * lua require'completion'.on_attach()

" Use <Tab> and <S-Tab> to navigate through popup menu
lua require('lspconfig').pyright.setup{ on_attach=requie'completion'.on_attach }
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']


let g:completion_chain_complete_list = {
            \ 'vim': [
            \   {'mode': '<c-p>'},
            \   {'mode': '<c-n>'}
            \],
            \ 'lua': [
            \   {'mode': '<c-p>'},
            \   {'mode': '<c-n>'}
            \],
            \ 'python': [
            \   {'mode': '<c-p>'},
            \   {'mode': '<c-n>'}
            \],
            \ 'default': [
            \   {'complete_items': ['lsp', 'snippet']},
            \   {'mode': '<c-p>'},
            \   {'mode': '<c-n>'}
            \]
            \}





r
