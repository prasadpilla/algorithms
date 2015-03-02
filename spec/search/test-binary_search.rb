require 'rspec'
require_relative '../../search/binary_search'

describe "#binary_search" do
	it "returns the index of the target- left" do
		array = [1,3,5,8,9]
		expect(binary_search(array, 1)).to eq(0)
	end

	it "returns the index of the target- right" do
		array = [1,3,5,8,9]
		expect(binary_search(array, 9)).to eq(4)
	end

	it "returns -1 if the target does not exist" do
		array = [1,3,5,8,9]
		expect(binary_search(array, 4)).to eq(-1)
	end
end