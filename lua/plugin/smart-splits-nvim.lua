return {
    "smart-splits-nvim/smart-splits.nvim",
    version = "*",
    opts = {
        ignored_buftypes = { 'nofile', 'quickfix', 'prompt' },
        ignored_filetypes = { 'NvimTree' },

        resize = {
            amount = 3,
            ignored_events = { 'BufEnter', 'WinEnter' },
        },

        move = {
            at_edge = 'stop',
            same_row = false,
        },

        swap = {
            move_cursor = false,
        },

        mux = {
            backend = nil,
            warn_if_unusable = true,
        },

        log = {
            level = 'info',
            file = true,
        },
    },
}
