return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install { 'c', 'rust', 'javascript', 'lua', 'luadoc', 'query', 'markdown', 'python', 'css', 'html', 'zsh', 'kitty', 'xml' }

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { "c", "rust", "javascript", "lua", "python", "html", "css", "markdown" },
            callback = function() vim.treesitter.start() end,
        })
    end,
}
