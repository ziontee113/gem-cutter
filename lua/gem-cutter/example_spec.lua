describe("test_spec", function()
	it("works", function()
		assert.equals(1, 1)
	end)

	it("breaks", function()
		assert.equals(2, 2)
		-- assert.equals(1, 2)
	end)
end)