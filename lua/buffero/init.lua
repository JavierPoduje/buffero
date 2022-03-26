require("buffero.groups")

local S = require("buffero.state")

local M = {}

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

return M
