require 'rspec'
require_relative '../../graphs/min_heap.rb'

describe "MinHeap" do
	describe "#initialize" do
		it "initializes with an empty array" do
			my_heap = MinHeap.new
			expect(my_heap.items).to eq([])
		end
	end

	describe "#add_item" do
		it "adds the largest item to the end" do
			my_heap = MinHeap.new
			my_heap.items = [2,3]
			my_heap.add_item(4)
			expect(my_heap.items).to eq([2,3,4])
		end

		it "adds the largest item to the end" do
			my_heap = MinHeap.new
			my_heap.items = [2,3]
			my_heap.add_item(1)
			expect(my_heap.items).to eq([1,3,2])
		end
	end

	describe "#delete_item" do
		it "deletes the first item of the 5-element heap" do
			my_heap = MinHeap.new
			my_heap.items = [0,1,2,3,4,5]
			my_heap.delete_item
			my_heap.items = [1,2,3,4,5]
		end

		it "deletes the first item of the 6-element heap" do
			my_heap = MinHeap.new
			my_heap.items = [0,1,2,3,4,5,6]
			my_heap.delete_item
			my_heap.items = [1,2,3,4,5,6]
		end

		it "deletes the first item of the 7-element heap" do
			my_heap = MinHeap.new
			my_heap.items = [0,1,2,3,4,5,6,7]
			my_heap.delete_item
			my_heap.items = [1,2,3,4,5,6,7]
		end
	end

	describe "#parent_idx" do
		it "returns the parent index of the given node" do
			my_heap = MinHeap.new
			my_heap.items = [0,1,2,3,4,5]
			
			expect(my_heap.send(:parent_idx, 1)).to eq(0)
			expect(my_heap.send(:parent_idx, 2)).to eq(0)
			expect(my_heap.send(:parent_idx, 4)).to eq(1)
			expect(my_heap.send(:parent_idx, 3)).to eq(1)
			expect(my_heap.send(:parent_idx, 5)).to eq(2)
		end
	end

	describe "#children_idx" do
		it "returns the parent index of the given node" do
			my_heap = MinHeap.new
			my_heap.items = [0,1,2,3,4,5]
			
			expect(my_heap.send(:children_idx, 0)).to eq([1,2])
			expect(my_heap.send(:children_idx, 1)).to eq([3,4])
			expect(my_heap.send(:children_idx, 2)).to eq([5])
		end
	end

	describe "#heapify_down" do
		it "moves an item down the heap and then pops it off the end with 3 items" do
			my_heap = MinHeap.new
			my_heap.items = [4,2,3]
			my_heap.send(:heapify_down, 0, my_heap.items)
			expect(my_heap.items).to eq([2,4,3])
		end

		it "moves an item down the heap and then pops it off the end with 4 items" do
			my_heap = MinHeap.new
			my_heap.items = [5,2,3,4]
			my_heap.send(:heapify_down, 0, my_heap.items)
			expect(my_heap.items).to eq([2,4,3,5])
		end

		it "moves an item down the heap and then pops it off the end with 5 items" do
			my_heap = MinHeap.new
			my_heap.items = [5,1,2,3,4]
			my_heap.send(:heapify_down, 0, my_heap.items)
			expect(my_heap.items).to eq([1,3,2,5,4])
		end
	end

	describe "#heapify_up" do
		it "moves last element up until heap is sorted" do
			my_heap = MinHeap.new
			my_heap.items = [1,2,3,0]
			my_heap.send(:heapify_up, 3, my_heap.items)
			expect(my_heap.items).to eq([0,1,3,2])
		end
	end
end