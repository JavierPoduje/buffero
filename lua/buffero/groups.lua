local group = vim.api.nvim_create_augroup("Buffero", { clear = true })
local S = require('buffero.state')

vim.api.nvim_create_autocmd("BufDelete", {
  group = group,
	callback = function()
		local data = { match = vim.fn.expand("<amatch>") }
		vim.schedule(function()
			table.insert(S.closed, data.match)
		end)
	end,
})
