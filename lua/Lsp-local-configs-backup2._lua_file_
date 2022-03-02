local lspconfig = require('lspconfig')
--local saga_provider = require('lspsaga.provider')

-- local saga = require 'lspsaga'
-- "saga.init_lsp_saga()


local opts = { noremap=true, silent=false }
local golang_setup = {
    on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
        -- Mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)


        require "lsp_signature".on_attach()  -- Note: add in lsp client on-attach
    end,
}
require'lspconfig'.gopls.setup(golang_setup)


vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)



-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local my_on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end
-- lsp provider to find the cursor word definition and reference
-- nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>



lspconfig.pyright.setup{
    --cmd = { 'C:/Users/Lenovo/AppData/Local/nvim-data/lsp_servers/python/node_modules/.bin/pyright.cmd', '--stdio' },
    --cmd = {'pyright-langserver', '--stdio'},
    --cmd = {'pyright', '--stdio'},
    --cmd = {'pyright'},
    on_attach = my_on_attach,
    root_dir = lspconfig.util.find_git_ancestor,
    filetypes = {'python'},
    settings = {
        pyright = {
            --disableLanguageServices = false,
            --disableOrganizeImports = truee,
            disablerganizeImports = false,
            openFilesOnly = true,
        },
        python = {
            analysis = {
                autoImportCompletions = true,
                autoSearchPaths = true,
                diagnosticMode = 'workspace', -- ["openfFilesOnly", "workspace"]
                -- diagnosticSeverityOverrides = ''
                -- extraPaths =
                logLevel = 'Warning',
                stubPath = 'C:/Users/Lenovo/miniconda3/envs/GDAL/Lib/site-packages',
                typeCheckingMode = 'basic',
                -- typeshedPaths
                -- useLibraryCodeForTypes = false
            },
            pythonPath = 'C:/Users/Lenovo/miniconda3/envs/GDAL/python.exe',
            venvPath = 'C:/Users/Lenovo/miniconda3/envs'
        },
    },
}



lspconfig.sumneko_lua.setup{
    on_attach = my_on_attach,
    filetypes = {'lua'},
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}


vim.g.coq_settings = {
    auto_start = 'shut-up',
    keymap = {
        recommended = false,
        jump_to_mark = "<C-,>"
    },
    clients = {
        paths = {
            path_seps = {
                "/"
            }
        },
        buffers = {
            match_syms = true
        }
    },
    completion = {
        always = true
    },
    display = {
        pum = {
            y_ratio = 0.3
        },
        ghost_text = {
            enabled = true
        },
        preview = {
            border = "shadow",
            positions = { north=1, south=2, east=3, west=4 }
        }
    }
}
--let g:coq_settings.display = {
--            \"pum" : {"y_ratio" : 0.3},
--            \"preview" : {"border":[
--            \["", "NormalFloat"],
--            \["", "NormalFloat"],
--            \["", "NormalFloat"],
--            \[" ", "NormalFloat"],
--            \["", "NormalFloat"],
--            \["", "NormalFloat"],
--            \["", "NormalFloat"],
--            \[" ", "NormalFloat"]
--            \]
--            \}
--            \}


--vim.cmd('COQnow -s')
--vim.cmd([[COQnow]])


vim.g.symbols_outline = {
    symbols = {
        File = {icon = "", hl = "TSURI"},
        Module = {icon = "", hl = "TSNamespace"},
        Namespace = {icon = "", hl = "TSNamespace"},
        Package = {icon = "", hl = "TSNamespace"},
        Class = {icon = "𝓒", hl = "TSType"},
        Method = {icon = "ƒ", hl = "TSMethod"},
        Property = {icon = "", hl = "TSMethod"},
        Field = {icon = "", hl = "TSField"},
        Constructor = {icon = "", hl = "TSConstructor"},
        Enum = {icon = "ℰ", hl = "TSType"},
        Interface = {icon = "ﰮ", hl = "TSType"},
        Function = {icon = "", hl = "TSFunction"},
        Variable = {icon = "", hl = "TSConstant"},
        Constant = {icon = "", hl = "TSConstant"},
        String = {icon = "𝓐", hl = "TSString"},
        Number = {icon = "#", hl = "TSNumber"},
        Boolean = {icon = "⊨", hl = "TSBoolean"},
        Array = {icon = "", hl = "TSConstant"},
        Object = {icon = "⦿", hl = "TSType"},
        Key = {icon = "🔐", hl = "TSType"},
        Null = {icon = "NULL", hl = "TSType"},
        EnumMember = {icon = "", hl = "TSField"},
        Struct = {icon = "𝓢", hl = "TSType"},
        Event = {icon = "🗲", hl = "TSType"},
        Operator = {icon = "+", hl = "TSOperator"},
        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
    }

}
require('vim.lsp.protocol').CompletionItemKind = {
    '', -- Text
    '', -- Method
    'ƒ', -- Function
    '', -- Constructor
    '', -- Field
    'ℰ', -- Variable
    '𝓒', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '了', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
}
--vim.g.symbols



-- Symbols
-- init.lua
--vim.g.symbols_outline = {
--    highlight_hovered_item = true,
--    show_guides = true,
--    auto_preview = true,
--    position = 'right',
--    relative_width = true,
--    width = 25,
--    auto_close = false,
--    show_numbers = false,
--    show_relative_numbers = false,
--    show_symbol_details = true,
--    preview_bg_highlight = 'Pmenu',
--    keymaps = { -- These keymaps can be a string or a table for multiple keys
--        close = {"<Esc>", "q"},
--        goto_location = "<Cr>",
--        focus_location = "o",
--        hover_symbol = "<C-space>",
--        toggle_preview = "K",
--        rename_symbol = "r",
--        code_actions = "a",
--    },
--    lsp_blacklist = {},
--    symbol_blacklist = {},
--    symbols = {
--        File = {icon = "", hl = "TSURI"},
--        Module = {icon = "", hl = "TSNamespace"},
--        Namespace = {icon = "", hl = "TSNamespace"},
--        Package = {icon = "", hl = "TSNamespace"},
--        Class = {icon = "𝓒", hl = "TSType"},
--        Method = {icon = "ƒ", hl = "TSMethod"},
--        Property = {icon = "", hl = "TSMethod"},
--        Field = {icon = "", hl = "TSField"},
--        Constructor = {icon = "", hl = "TSConstructor"},
--        Enum = {icon = "ℰ", hl = "TSType"},
--        Interface = {icon = "ﰮ", hl = "TSType"},
--        Function = {icon = "", hl = "TSFunction"},
--        Variable = {icon = "", hl = "TSConstant"},
--        Constant = {icon = "", hl = "TSConstant"},
--        String = {icon = "𝓐", hl = "TSString"},
--        Number = {icon = "#", hl = "TSNumber"},
--        Boolean = {icon = "⊨", hl = "TSBoolean"},
--        Array = {icon = "", hl = "TSConstant"},
--        Object = {icon = "⦿", hl = "TSType"},
--        Key = {icon = "🔐", hl = "TSType"},
--        Null = {icon = "NULL", hl = "TSType"},
--        EnumMember = {icon = "", hl = "TSField"},
--        Struct = {icon = "𝓢", hl = "TSType"},
--        Event = {icon = "🗲", hl = "TSType"},
--        Operator = {icon = "+", hl = "TSOperator"},
--        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
--    }
--}

--local servers = {'pyright'}


local cfg = {
  debug = false, -- set to true to enable debug logging
  log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log", -- log dir when debug is on
  -- default is  ~/.cache/nvim/lsp_signature.log
  verbose = false, -- show debug line number

  bind = true, -- This is mandatory, otherwise border config won't get registered.
               -- If you want to hook lspsaga or other signature handler, pls set to false
  doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                 -- set to 0 if you DO NOT want any API comments be shown
                 -- This setting only take effect in insert mode, it does not affect signature help in normal
                 -- mode, 10 by default

  floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

  floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
  -- will set to true when fully tested, set to false will use whichever side has more space
  -- this setting will be helpful if you do not want the PUM and floating win overlap

  floating_window_off_x = 1, -- adjust float windows x position.
  floating_window_off_y = 1, -- adjust float windows y position.


  fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
  hint_enable = true, -- virtual hint enable
  hint_prefix = "🐼 ",  -- Panda for parameter
  hint_scheme = "String",
  hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
  max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
                   -- to view the hiding contents
  max_width = 80, -- max_width of signature floating_window, line will be wrapped if exceed max_width
  handler_opts = {
    border = "rounded"   -- double, rounded, single, shadow, none
  },

  always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

  auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
  extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
  zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

  padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc

  --transparency = nil, -- disabled by default, allow floating win transparent value 1~100
  transparency = 20,
  shadow_blend = 36, -- if you using shadow as border use this set the opacity
  shadow_guibg = 'Black', -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
  timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
  toggle_key = nil -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
}

-- recommended:
require'lsp_signature'.setup(cfg) -- no need to specify bufnr if you don't use toggle_key

-- You can also do this inside lsp on_attach
-- note: on_attach deprecated
--require'lsp_signature'.on_attach(cfg, bufnr) -- no need to specify bufnr if you don't use toggle_key
