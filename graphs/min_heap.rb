class MinHeap
	attr_accessor :items

	def initialize
		@items = []
	end

	def length
		@items.length
	end

	def last_idx
		self.length - 1
	end

	def add_item(value)
		@items << value
		heapify_up(last_idx, @items)
	end

	def delete_item
		value = @items[0]
		@items[0] = @items.pop
		heapify_down(0, @items)
		value
	end

	protected
	def parent_idx(child_idx)
		child_idx % 2 == 0 ? child_idx / 2 - 1 : child_idx / 2
	end

	def children_idx(parent_idx)
		first_child = parent_idx * 2 + 1
		second_child = parent_idx * 2 + 2
		if @items[first_child] && @items[second_child]
			[first_child, second_child]
		elsif @items[first_child]
			[first_child]
		else
			[]
		end
	end

	def proper_relationship?(parent_idx, array)
		children_idx(parent_idx).each do |child_idx|
			if array[child_idx] < array[parent_idx]
				return false
			end
		end
		true
	end

	def heapify_down(parent_idx, array)
		children = children_idx(parent_idx)

		if children.empty? || proper_relationship?(parent_idx, array)
			return array
		end

		#find smallest child
		if !children[1] #|| array[children[0]] < array[children[1]]
			smallest_child = children[0]
		elsif array[children[0]] < array[children[1]]
			smallest_child = children[0]
		elsif array[children[0]] > array[children[1]]
			smallest_child = children[1]
		end

		#move 
		array[parent_idx], array[smallest_child] = array[smallest_child], array[parent_idx]
		heapify_down(smallest_child, array)
	end

	def heapify_up(child_idx, array)
		return array if child_idx == 0
		parent_idx = parent_idx(child_idx)
		if array[parent_idx] > array[child_idx]
			array[parent_idx], array[child_idx] = array[child_idx], array[parent_idx]
			self.heapify_up(parent_idx, array)
		end
	end
end