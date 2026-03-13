local mod = require("close-duplicate-tabs")

vim.api.nvim_create_user_command(
  "CloseDuplicateTabs",
  function()
    mod.close_duplicates()
  end,
  {}
)
