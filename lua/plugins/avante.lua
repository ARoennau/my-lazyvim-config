return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "MeanderingProgrammer/render-markdown.nvim",
  },
  opts = {
    provider = "copilot", -- or "openai", "anthropic" etc.
  },
  keys = {
    {
      "<leader>a",
      function()
        require("avante").toggle() -- example toggle or invoke command
      end,
      desc = "Toggle Avante AI Assistant",
    },
  },
}
