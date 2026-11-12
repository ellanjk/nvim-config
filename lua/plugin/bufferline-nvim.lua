return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            mode = "buffers",
            separator_style = "slant",
            themable = true,
            color_icons = true,
            show_buffer_icons = true,
            indicator = {
                style = 'none',
            },
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "TabLine",
                    text_align = "center",
                    separator = true,
                },
            },
            hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
            },
        },
        highlights = {
            fill = {
                link = "TabLine",
            },
            background = {
                bg = { attribute = "bg", highlight = "NormalNC"},
                fg = { attribute = "fg", highlight = "Visual" },
            },
            buffer_selected = {
                bg = { attribute = "bg", highlight = "Normal"},
                fg = { attribute = "fg", highlight = "Normal" },
            },
            tab_selected = {
                bg = { attribute = "bg", highlight = "Normal" },
                fg = { attribute = "fg", highlight = "Normal" },
            },
            buffer_visible = {
                link = "NormalNC",
            },
            tab = {
                bg = { attribute = "bg", highlight = "NormalNC"},
                fg = { attribute = "fg", highlight = "Visual" },
            },
            separator = {
                bg = { attribute = "bg", highlight = "NormalNC"},
                fg = { attribute = "bg", highlight = "TabLine"},
            },
            tab_separator = {
                bg = { attribute = "bg", highlight = "NormalNC"},
                fg = { attribute = "bg", highlight = "TabLine"},
            },
            separator_selected = {
                bg = { attribute = "bg", highlight = "Normal"},
                fg = { attribute = "bg", highlight = "TabLine"},
            },
            tab_separator_selected = {
                bg = { attribute = "bg", highlight = "Normal"},
                fg = { attribute = "bg", highlight = "TabLine"},
            },
            separator_visible = {
                bg = { attribute = "bg", highlight = "NormalNC"},
                fg = { attribute = "bg", highlight = "TabLine"},
            },
            offset_separator = {
                bg = { attribute = "bg", highlight = "TabLine"},
            },
            -- close_button_selected = {
            --     link = "StatusLine",
            -- },
            -- modified = {
            --     link = "DiffDelete",
            -- },
            -- modified_selected = {
            --     link = "StatusLine",
            -- },
            -- modified_visible = {
            --     link = "DiffDelete",
            -- },
        }
    },
}
