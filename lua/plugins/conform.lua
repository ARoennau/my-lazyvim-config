-- return {
--   "stevearc/conform.nvim",
--   opts = {
--     -- LazyVim will use these options when formatting with the conform.nvim formatter
--     format = {
--       timeout_ms = 3000,
--       async = false, -- not recommended to change
--       quiet = false, -- not recommended to change
--     },
--     formatters_by_ft = {
--       lua = { "stylua" },
--       fish = { "fish_indent" },
--       sh = { "shfmt" },
--       -- javascript = { "prettier" },
--     },
--     -- The options you set here will be merged with the builtin formatters.
--     -- You can also define any custom formatters here.
--     formatters = {
--       injected = { options = { ignore_errors = true } },
--       -- # Example of using dprint only when a dprint.json file is present
--       -- dprint = {
--       --   condition = function(ctx)
--       --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
--       --   end,
--       -- },
--       --
--       -- # Example of using shfmt with extra args
--       -- shfmt = {
--       --   prepend_args = { "-i", "2", "-ci" },
--       -- },
--     },
--   },
-- }

return {
  "stevearc/conform.nvim",
  opts = {
    format = {
      timeout_ms = 3000,
      async = true, -- Use async formatting as recommended
      quiet = false,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      javascript = { "prettier" }, -- Uncomment and enable prettier for JS
      go = { "gofumpt " },
      -- Add more languages and formatters as needed
    },
    formatters = {
      injected = { options = { ignore_errors = true } },
      -- Example custom formatter with condition
      -- dprint = {
      --   condition = function(ctx)
      --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
      --   end,
      -- },
      -- shfmt with extra arguments example
      -- shfmt = {
      --   prepend_args = { "-i", "2", "-ci" },
      -- },
    },
    -- Optional: enable format on save provided by conform.nvim itself
    format_on_save = {
      lsp_format = true,
      timeout_ms = 500,
    },
  },
}
