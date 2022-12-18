local m = require("gem-cutter")

describe("test_spec", function()
	it("works", function()
		local input = [[
<div>Hello World!</div>
        ]]

		local want = "Hello World!"
		local got = m.extract(input)

		assert.equals(want, got)
	end)
end)
