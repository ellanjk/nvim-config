return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            theme = 'auto',
            globalstatus = true,
            component_separators = '',
            disabled_filetypes = {
                statusline = {},
            },
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = {{'filename', file_status = false, separator = { left = '', right = '' }, right_padding = 2 }},
            lualine_b = { 'mode' },
            lualine_c = {},
            lualine_x = {'searchcount'},
            lualine_y = {'filetype'},
            lualine_z = {
                { 'location', separator = { left = '', right = '' }},
            },
        },
        inactive_sections = {
            lualine_a = { {'filename', file_status = false} },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        tabline = {},
        extensions = {
            {
                sections = {
                    lualine_a = {},
                    lualine_b = { 'searchcount' },
                    lualine_y = { 'mode' },
                    lualine_z = {{ 'filename', file_status = false, separator = { left = '', right = '' } }},
                },
                filetypes = {'toggleterm'}
            },
            {
                sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_y = {},
                    lualine_z = {},
                },
                filetypes = {'NvimTree'}
            }
        },
    },
}
