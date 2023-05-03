local M = {}

function M.init()
  vim.api.nvim_create_user_command('MemoNew', require('memo-new.memo-new'), {})
end

return M
