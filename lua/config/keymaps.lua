local map = vim.keymap.set

-- Prevent terminal resizing when toggling nvim tree
local function smart_toggle_tree()
    if vim.bo.filetype == "toggleterm" then
        vim.cmd(":SmartCursorMoveLeft")
    end
    vim.cmd("NvimTreeToggle")
end

-- Prevent terminal resizing when opening nvim tree
local function smart_open_tree()
    if vim.bo.filetype == "toggleterm" then
        vim.cmd(":SmartCursorMoveLeft")
    end
    vim.cmd("NvimTreeOpen")
end

vim.g.mapleader = " "

-- Window navigation
map('n', '<A-h>', ':SmartCursorMoveLeft <CR>', { silent = true, desc = "Move focus left" })
map('n', '<A-j>', ':SmartCursorMoveDown <CR>', { silent = true, desc = "Move focus down" })
map('n', '<A-k>', ':SmartCursorMoveUp <CR>', { silent = true, desc = "Move focus up" })
map('n', '<A-l>', ':SmartCursorMoveRight <CR>', { silent = true, desc = "Move focus right" })

-- Resizing
map('n', '<C-h>', ':SmartResizeLeft 2 <CR>', { silent = true })
map('n', '<C-j>', ':SmartResizeDown 2 <CR>', { silent = true })
map('n', '<C-k>', ':SmartResizeUp 2 <CR>', { silent = true })
map('n', '<C-l>', ':SmartResizeRight 2 <CR>', { silent = true })

-- keep visual selection when tabbing
map('v', '<', '<gv', { silent = true })
map('v', '>', '>gv', { silent = true })

-- Clear search results
map('n', '<ESC>', ':noh <CR>', { silent = true })

-- General
map('i', 'jk', '<ESC>', { silent = true })
map('n', ';', ':')

-- Toggle comment
map('n', '<leader>/', 'gcc', {remap = true, silent = true, desc = "Toggle comment" })
map('v', '<leader>/', 'gcgv', {remap = true, silent = true, desc = "Toggle comment" })

-- Nvim-tree
map('n', '<leader>e', smart_open_tree, { silent = true, desc = "Open tree" })
map('n', '<A-n>', smart_toggle_tree, { silent = true, desc = "Toggle tree" })

-- Buffers
map('n', '<Tab>', ':BufferLineCycleNext <CR>', { silent = true, desc = "Go to next buffer"})
map('n', '<S-Tab>', ':BufferLineCyclePrev <CR>', { silent = true, desc = "Go to previous buffer"})
map('n', '<A-Tab>', ':BufferLineMoveNext <CR>', { silent = true, desc = "Move buffer back"})
map('n', '<A-S-Tab>', ':BufferLineMovePrev <CR>', { silent = true, desc = "Move buffer forward"})
map('n', '<leader>x', ':bp<CR>:bd! #<CR>', { silent = true, desc = "Close buffer"})
map('n', '<leader>br', ':file ', { desc = "Rename buffer"})

-- Terminal
map('n', '<A-\'>', ':ToggleTerm direction="vertical" size=50 <CR>', { silent = true, desc = "Toggle terminal"})
map('t', 'jk', '<C-\\><C-N>')
map('n', '<leader>ts', ':TermSelect<CR>', { silent = true, desc = "Select terminal" })

map('n', '<A-m>', function()
  local Terminal = require('toggleterm.terminal').Terminal
  local new_term = Terminal:new({ direction = 'vertical' })
  new_term:toggle(50)
end, { silent = true, desc = "Open new terminal" })


-- Tabs
map('n', '<leader>tn', ':tabnew <CR>', { silent = true, desc = "New tab"})
map('n', '<leader>tr', ':BufferLineTabRename ', { silent = true, desc = "Rename tab"})
