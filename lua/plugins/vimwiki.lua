return {
  "vimwiki/vimwiki",
  event = { "BufReadPre", "BufNewFile" },
  keys = { "<leader>ww", "<leader>wt" },
  init = function()
    vim.g.vimwiki_global_ext = 0
    vim.g.vimwiki_list = {
      {
        path = vim.fn.expand("~/vimwiki"),
        syntax = "markdown",
        ext = ".md",
      },
    }
    vim.g.vimwiki_ext2syntax = {
      [".md"] = "markdown",
      [".markdown"] = "markdown",
      [".mdown"] = "markdown",
    }
    vim.g.vimwiki_markdown_link_ext = 1

    -- Optional: Set conceallevel to 0 for better markdown visibility
    vim.opt.conceallevel = 0

    -- Autocmd to set filetype to 'vimwiki' for files in vimwiki path
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = vim.fn.expand("~/vimwiki") .. "/**/*.md",
      callback = function()
        vim.bo.filetype = "vimwiki"
      end,
    })
  end,
  ft = { "vimwiki", "markdown", "md" },
}
