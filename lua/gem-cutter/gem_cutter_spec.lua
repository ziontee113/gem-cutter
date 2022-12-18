local m = require("gem-cutter")

describe("test_spec", function()
	it("works for different inputs", function()
		local tags = { "div", "p", "h1", "Component" }
		local contents = { "Hello World!", "writing a poem" }

		for _, tag in ipairs(tags) do
			for _, content in ipairs(contents) do
				local input = string.format("<%s>%s</%s>", tag, content, tag)
				local want = content
				local got = m.extract(input)

				print("input:" .. input)
				print("want:" .. want)
				print("got:" .. got)
				print("--------------------")

				assert.equals(want, got)
			end
		end
	end)
end)
