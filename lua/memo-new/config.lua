local M = {}

M.defaults = {
  memodir = '~/memo',
}

M.config = {}

function M.set(options)
  M.options = vim.tbl_deep_extend('force', {}, M.defaults, options or {})
end

return M
