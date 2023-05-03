local M = {}

function M.setup(opts)
  local config = require('memo-new.config')
  config.set(opts)
  require('memo-new.command').init()
end

return M
