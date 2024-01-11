local wk = require("which-key")
-- Register custom commands in you own menu
wk.register({
    e = { "<cmd>Ex<cr>", "File explorer"}, -- command assinged to a key
    t = { -- key that has a sub-menu
        name = "Terminal", -- optional group name
        t = { "<cmd>terminal<cr><cmd>set nonu<cr>", "New terminal" }, -- command assigned to a key
        b = { "<cmd>new<cr><cmd>terminal<cr><cmd>set nonu<cr>", "New terminal - bottom" },
    },
}, { prefix = "<leader>" })

