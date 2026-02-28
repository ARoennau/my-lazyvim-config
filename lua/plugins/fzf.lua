return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    -- Override the global window options to be "Tmux-friendly"
    opts.winopts = {
      height = 0.80, -- Use 80% of the pane height
      width = 0.80, -- Use 80% of the pane width
      preview = {
        layout = "vertical", -- Stack preview vertically to save horizontal space
        vertical = "down:45%",
        hidden = "nohidden", -- Don't try to hide/show dynamically
      },
    }

    -- Specific fix for Code Actions (where your crash happens)
    opts.code_actions = {
      winopts = {
        -- Use a smaller, simpler window for the action list
        height = 0.40,
        width = 0.60,
        -- Disable the preview if the pane is still too small
        preview = { layout = "vertical", vertical = "down:50%" },
      },
    }
  end,
}
