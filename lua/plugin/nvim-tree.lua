return {
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
      },
      config = function()
        local function my_on_attach(bufnr)
          local api = require('nvim-tree.api')

          local function opts(desc)
            return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
          end

          vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', opts('Toggle nvim-tree'))
          vim.keymap.set('n', '<Tab>', api.tree.change_root_to_node, opts('CD'))
          vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
          vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
          vim.keymap.set("n", "a", api.fs.create, opts("Create File Or Directory"))
          vim.keymap.set("n", "q", api.tree.close, opts("Close"))
          vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
          vim.keymap.set({ "n", "x" }, "d", api.fs.remove, opts("Delete"))
          vim.keymap.set("n", "h", api.node.navigate.parent, opts("Parent Directory"))
        end

        require("nvim-tree").setup({
          on_attach = my_on_attach,
          view = {
            width = 30,
          },
        })
      end,
    },
}
