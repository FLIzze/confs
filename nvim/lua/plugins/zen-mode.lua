return {
        "folke/zen-mode.nvim",
        keys = {
                { "<leader>z", function() require("zen-mode").toggle() end, desc = "Toggle Zen Mode" },
        },
        config = function()
                require("zen-mode").setup({
                        window = {
                                backdrop = 0.95, -- Optional: darken the background a bit
                                width = 100,     -- Optional: specify the window width (useful for larger screens)
                                height = 1,      -- Optional: maximize the height for a full-screen effect
                                options = {
                                        signcolumn = "no",    -- Hide sign column
                                        number = false,       -- Hide line numbers
                                        relativenumber = false, -- Hide relative line numbers
                                        cursorline = false,   -- Disable cursor line
                                        foldcolumn = "0",     -- Hide fold column
                                        list = false,         -- Hide extra whitespace characters
                                },
                        },
                })
        end,
}
