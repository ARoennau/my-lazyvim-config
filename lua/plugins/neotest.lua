return {
  "nvim-neotest/neotest",
  dependencies = {
    "haydenmeade/neotest-jest",
  },
  opts = function(_, opts)
    table.insert(
      opts.adapters,
      require("neotest-jest")({
        jestCommand = "npm test --",
        jestConfigFile = "custom.jest.config.ts",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      })
    )
  end,
  keys = {
    -- {
    --   "<leader>jf",
    --   function()
    --     require("neotest").run.run(vim.fn.expand("%"))
    --   end,
    --   desc = "Run File",
    -- },
    -- {
    --   "<leader>jT",
    --   function()
    --     require("neotest").run.run(vim.loop.cwd())
    --   end,
    --   desc = "Run All Test Files",
    -- },
    -- {
    --   "<leader>js",
    --   function()
    --     require("neotest").run.run()
    --   end,
    --   desc = "Run Nearest",
    -- },
    -- {
    --   "<leader>jS",
    --   function()
    --     require("neotest").summary.toggle()
    --   end,
    --   desc = "Toggle Summary",
    -- },
    -- {
    --   "<leader>jo",
    --   function()
    --     require("neotest").output.open({ enter = true, auto_close = true })
    --   end,
    --   desc = "Show Output",
    -- },
    -- {
    --   "<leader>jO",
    --   function()
    --     require("neotest").output_panel.toggle()
    --   end,
    --   desc = "Toggle Output Panel",
    -- },
    -- {
    --   "<leader>jC",
    --   function()
    --     require("neotest").run.stop()
    --   end,
    --   desc = "Stop",
    -- },
  },
}
