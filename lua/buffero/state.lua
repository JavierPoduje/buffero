local M = {}

local state = {
	closed = {},
}

return setmetatable(M, {
	__index = function(_, k)
		return state[k]
	end,
})
