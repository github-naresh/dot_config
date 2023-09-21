return {
  "github-naresh/auto-fold-imports.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local auto_fold = require("auto-fold-imports")
    local augroup = vim.api.nvim_create_augroup("AutoFoldImports", {})
    vim.api.nvim_clear_autocmds({ group = augroup })
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      group = augroup,
      callback = function()
        auto_fold.setup()
      end,
    })
  end,
}
