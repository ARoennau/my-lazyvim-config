return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true, -- <--- This is the key setting for ghost text
        auto_trigger = false, -- Trigger suggestions immediately upon entering insert mode
        -- You may need to customize keymaps here if the LazyVim defaults conflict
        -- keymap = {
        --   accept = "<Tab>", -- Accept the entire suggestion
        --   -- You will likely set the keymaps below via `copilot-cmp` instead
        -- },
      },
      panel = {
        enabled = false, -- Disable the split-window panel to focus on inline suggestions
      },
      -- ... other settings ...
    })
  end,
}
