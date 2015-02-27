require 'rspec'
require_relative '../../sorts/heap_sort.rb'

describe 'heap_sort' do
	it 'orders an array' do
		expect(heap_sort([4,1,2,6])).to eq([1,2,4,6])
	end
end