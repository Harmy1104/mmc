return {
    {
        "jiaoshijie/undotree",
        dependencies = "nvim-lua/plenary.nvim",
        config = true,
        keys = { -- load the plugin only when using it's keybinding:
            { "<F3>", "<cmd>lua require('undotree').toggle()<cr>" },
        },
    }
}
