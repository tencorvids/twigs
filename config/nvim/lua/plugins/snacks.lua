---@module "snacks"
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        picker = {
            exclude = {
                ".git",
                "node_modules",
            },
        },
        explorer = {},
        dim = {},
        input = {},
        notifier = {},
        lazygit = {},
        image = {},
        indent = {},
    },
    -- stylua: ignore
    keys = {
        -- picker
        { "<leader><space>", function() Snacks.picker.smart() end,                 desc = "Smart Find Files" },
        { "<leader>/",       function() Snacks.picker.grep() end,                  desc = "Grep" },
        { "<leader>e",       function() Snacks.explorer() end,                     desc = "File Explorer" },
        -- find
        { "<leader>ff",      function() Snacks.picker.files() end,                 desc = "Find Files" },
        -- git
        { "<leader>gg",      function() Snacks.lazygit() end,                      desc = "Lazygit" },
        -- Grep
        { "<leader>sb",      function() Snacks.picker.lines() end,                 desc = "Buffer Lines" },
        { "<leader>sg",      function() Snacks.picker.grep() end,                  desc = "Grep" },
        -- search
        { "<leader>sM",      function() Snacks.picker.man() end,                   desc = "Man Pages" },
        { "<leader>sh",      function() Snacks.picker.help() end,                  desc = "Help Pages" },
        { "<leader>si",      function() Snacks.picker.icons() end,                 desc = "Icons" },
        { "<leader>sk",      function() Snacks.picker.keymaps() end,               desc = "Keymaps" },
        -- LSP
        { "gd",              function() Snacks.picker.lsp_definitions() end,       desc = "Goto Definition" },
        { "gD",              function() Snacks.picker.lsp_declarations() end,      desc = "Goto Declaration" },
        { "gr",              function() Snacks.picker.lsp_references() end,        nowait = true,                  desc = "References" },
        { "gI",              function() Snacks.picker.lsp_implementations() end,   desc = "Goto Implementation" },
        { "gy",              function() Snacks.picker.lsp_type_definitions() end,  desc = "Goto T[y]pe Definition" },
        -- misc
        { "<leader>uD",      function() Snacks.toggle.dim():map("<leader>uD") end, desc = "Toggle Dim Focus" },
    },
}
