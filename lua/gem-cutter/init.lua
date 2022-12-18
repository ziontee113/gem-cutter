local M = {}

M.extract = function(input)
	local pat = "<.+>(.+)</.+>"

	local matches = {}

	for match in string.gmatch(input, pat) do
		table.insert(matches, match)
	end

	return matches[1]
end

return M
