local wk = require("which-key")

wk.register({

    t = {
        name = "neotest",
        a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach to the nearest test" },
        l = { "<cmd>lua require('neotest').run.run_last()<cr>", "Toggle Test Summary" },
        o = { "<cmd>lua require('neotest').output_panel.toggle()<cr>", "Toggle Test Output Panel" },
        p = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop the nearest test" },
        s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Toggle Test Summary" },
        t = { "<cmd>lua require('neotest').run.run()<cr>", "Run the nearest test" },
        T = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run test the current file" }
    },
}, {prefix = "<leader>"})
