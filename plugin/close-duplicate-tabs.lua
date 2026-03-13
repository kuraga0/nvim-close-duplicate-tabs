local mod = require("close-duplicate-tabs.module")

vim.api.nvim_create_user_command(
  "CloseDuplicateTabs",
  function()
    mod.close_duplicate_tabs()
  end,
  {}
)
