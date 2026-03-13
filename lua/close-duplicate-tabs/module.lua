local M = {}

function M.close_duplicate_tabs()
  local seen = {}
  local tabs = vim.api.nvim_list_tabpages()

  for _, tab in ipairs(tabs) do
    local wins = vim.api.nvim_tabpage_list_wins(tab)

    if #wins > 0 then
      local buf = vim.api.nvim_win_get_buf(wins[1])
      local name = vim.api.nvim_buf_get_name(buf)

      if name ~= "" then
        if seen[name] then
          vim.cmd("tabclose " .. vim.api.nvim_tabpage_get_number(tab))
        else
          seen[name] = true
        end
      end
    end
  end
end

return M
