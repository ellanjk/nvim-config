return {
    {
        "RedsXDD/neopywal.nvim",
        name = "neopywal",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme("neopywal")
        end,
    },

    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme("cyberdream")
        end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("rose-pine")
        end,
    },

    {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme("catppuccin")
        end,
    },
}
