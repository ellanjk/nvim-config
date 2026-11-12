vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = {"vim"},
            }
        }
    }
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }

        -- Navigation & Inspection
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)          -- Go to definition
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)         -- Go to declaration
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)     -- Go to implementation
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)          -- Find references
        vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, opts)     -- Go to type definition

        -- Documentation & Information
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                -- Show hover documentation

        -- Modifications & Refactoring
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)      -- Rename symbol across project
    end,
})

vim.lsp.enable({ "ty" })
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
