local M = {}
local S = require('buffero.state')
require('buffero.groups')

-- Open the last closed buffer.
-- If no buffer was closed, prints the message "no buffer to open...".
-- @return void
M.open_last_closed_buffer = function()
	if #S.closed == 0 then
		print("no buffer to open...")
		return
	end

	local last_closed_buf = table.remove(S.closed, #S.closed)
	v.nvim_exec(":e " .. last_closed_buf, true)
end

vim.api.nvim_set_keymap(
	"n",
	"<Leader>a",
	':lua require("buffero").open_last_closed_buffer()<CR>',
	{ noremap = true, silent = true }
)

return M
