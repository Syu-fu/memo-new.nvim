local opts = require('memo-new.config').options

return function()
  local title = vim.ui.input('Title: ')
  vim.fn.jobstart('memo new ' .. title)
  if title ~= '' then
    title = '-' .. title
  end
  local current_date = os.date('%Y-%m-%d')
  local filepath = vim.fn.expand(string.format('%s/%s%s.md', opts.memodir, current_date, title))
  vim.wait(1000, function()
    return vim.fn.filereadable(filepath) == 1
  end, 50)
  if vim.fn.filereadable(filepath) == 1 then
    vim.cmd(string.format('edit %s', filepath))
  else
    vim.api.nvim_err_writeln('file not exists')
  end
end
