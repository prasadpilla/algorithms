require_relative '../graphs/min_heap.rb'

def heap_sort(array)
	heap = MinHeap.new

	array.each do |el|
		heap.add_item(el)
	end

	array.each_index do |i|
		array[i] = heap.delete_item
	end
	array
end