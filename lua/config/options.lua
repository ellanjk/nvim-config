vim.g.mapleader = " "

vim.opt.clipboard = 'unnamedplus'
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- UI config
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.cmdheight = 0
vim.opt.wrap = false
vim.opt.background = "dark"

vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup(
        "TerminalCursorSettings",
        { clear = true }
    ),
    callback = function()
        vim.opt_local.cursorcolumn = false
        -- vim.keymap.set('n', '<leader>x', ':bd! <CR>')
    end,
})

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()

    local function adjust(color_int, percent)
        if not color_int then return nil end

        local r = math.floor(color_int / 65536) % 256
        local g = math.floor(color_int / 256) % 256
        local b = color_int % 256

        r = math.min(255, math.max(0, math.floor(r + (r * (percent / 100)))))
        g = math.min(255, math.max(0, math.floor(g + (g * (percent / 100)))))
        b = math.min(255, math.max(0, math.floor(b + (b * (percent / 100)))))

        return string.format("#%02x%02x%02x", r, g, b)
    end

        local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
        local normalNC = vim.api.nvim_get_hl(0, { name = "NormalNC", link = false })
        local tabLine = vim.api.nvim_get_hl(0, { name = "TabLine", link = false })

        local activeWindow = adjust(normal.bg, 60)
        local inactiveWindow = adjust(normalNC.bg, 40)
        local tabline = adjust(tabLine.bg, -20)

        vim.api.nvim_set_hl(0, "Normal", { bg = activeWindow })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = inactiveWindow })
        vim.api.nvim_set_hl(0, "TabLine", { bg = tabline })
        vim.api.nvim_set_hl(0, "StatusLine", { bg = tabline })
        vim.api.nvim_set_hl(0, "MsgArea", { bg = tabline })
        vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = inactiveWindow })
        vim.api.nvim_set_hl(0, "NvimTreeSignColumn", { fg = inactiveWindow })
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = tabline, bg = inactiveWindow })

    end,
})

