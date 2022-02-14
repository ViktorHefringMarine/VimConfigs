-- local lspconfig     = require('lspconfig')
-- local coq           = require('coq')
-- local saga          = require('lspsaga')
-- local saga_provider = require('lspsaga.provider')
-- saga.init_lsp_saga()
--
--
-- local opts = { noremap=true, silent=false }
-- vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
-- vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
--
--
--
-- -- Use an on_attach function to only map the following keys
-- -- after the language server attaches to the current buffer
-- local my_on_attach = function(client, bufnr)
--     -- Enable completion triggered by <c-x><c-o>
--     vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--     -- Mappings.
--     -- See `:help vim.lsp.*` for documentation on any of the below functions
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
-- end
-- -- lsp provider to find the cursor word definition and reference
-- -- nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
--
--
--
--
--
--
--
-- lspconfig.pyright.setup{
--     --cmd = { 'C:/Users/Lenovo/AppData/Local/nvim-data/lsp_servers/python/node_modules/.bin/pyright.cmd', '--stdio' },
--     --cmd = {'pyright-langserver', '--stdio'},
--     --cmd = {'pyright', '--stdio'},
--     --cmd = {'pyright'},
--     on_attach = my_on_attach,
--     root_dir = lspconfig.util.find_git_ancestor,
--     filetypes = {'python'},
--     settings = {
--         pyright = {
--             --disableLanguageServices = false,
--             disableOrganizeImports = true,
--             openFilesOnly = true,
--         },
--         python = {
--             analysis = {
--                 autoImportCompletions = false,
--                 autoSearchPaths = true,
--                 diagnosticMode = 'workspace', -- ["openfFilesOnly", "workspace"]
--                 -- diagnosticSeverityOverrides = ''
--                 -- extraPaths =
--                 logLevel = 'Warning',
--                 stubPath = 'C:/Users/Lenovo/miniconda3/envs/GDAL/Lib/site-packages',
--                 typeCheckingMode = 'basic',
--                 -- typeshedPaths
--                 -- useLibraryCodeForTypes = false
--             },
--             pythonPath = 'C:/Users/Lenovo/miniconda3/envs/GDAL/python.exe',
--             venvPath = 'C:/Users/Lenovo/miniconda3/envs'
--         },
--     },
-- }
-- lspconfig.pyright.setup(coq.lsp_ensure_capabilities{})
--
--
--
-- --local vim.g.coq_settings = {
-- --    "display.pum.y_ratio": 0.3,
-- --    "display.preview.border":"double"
-- --}
--
--
--
--
--
--
--
-- -- Symbols
-- -- init.lua
-- --vim.g.symbols_outline = {
-- --    highlight_hovered_item = true,
-- --    show_guides = true,
-- --    auto_preview = true,
-- --    position = 'right',
-- --    relative_width = true,
-- --    width = 25,
-- --    auto_close = false,
-- --    show_numbers = false,
-- --    show_relative_numbers = false,
-- --    show_symbol_details = true,
-- --    preview_bg_highlight = 'Pmenu',
-- --    keymaps = { -- These keymaps can be a string or a table for multiple keys
-- --        close = {"<Esc>", "q"},
-- --        goto_location = "<Cr>",
-- --        focus_location = "o",
-- --        hover_symbol = "<C-space>",
-- --        toggle_preview = "K",
-- --        rename_symbol = "r",
-- --        code_actions = "a",
-- --    },
-- --    lsp_blacklist = {},
-- --    symbol_blacklist = {},
-- --    symbols = {
-- --        File = {icon = "", hl = "TSURI"},
-- --        Module = {icon = "", hl = "TSNamespace"},
-- --        Namespace = {icon = "", hl = "TSNamespace"},
-- --        Package = {icon = "", hl = "TSNamespace"},
-- --        Class = {icon = "𝓒", hl = "TSType"},
-- --        Method = {icon = "ƒ", hl = "TSMethod"},
-- --        Property = {icon = "", hl = "TSMethod"},
-- --        Field = {icon = "", hl = "TSField"},
-- --        Constructor = {icon = "", hl = "TSConstructor"},
-- --        Enum = {icon = "ℰ", hl = "TSType"},
-- --        Interface = {icon = "ﰮ", hl = "TSType"},
-- --        Function = {icon = "", hl = "TSFunction"},
-- --        Variable = {icon = "", hl = "TSConstant"},
-- --        Constant = {icon = "", hl = "TSConstant"},
-- --        String = {icon = "𝓐", hl = "TSString"},
-- --        Number = {icon = "#", hl = "TSNumber"},
-- --        Boolean = {icon = "⊨", hl = "TSBoolean"},
-- --        Array = {icon = "", hl = "TSConstant"},
-- --        Object = {icon = "⦿", hl = "TSType"},
-- --        Key = {icon = "🔐", hl = "TSType"},
-- --        Null = {icon = "NULL", hl = "TSType"},
-- --        EnumMember = {icon = "", hl = "TSField"},
-- --        Struct = {icon = "𝓢", hl = "TSType"},
-- --        Event = {icon = "🗲", hl = "TSType"},
-- --        Operator = {icon = "+", hl = "TSOperator"},
-- --        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
-- --    }
-- --}
--
-- --local servers = {'pyright'}
