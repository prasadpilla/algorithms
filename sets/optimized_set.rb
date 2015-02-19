class OptimizedSet
	attr_accessor :items, :length

	def initialize(length = 4)
		@items = Array.new(length) { [] }
		@item_count = 0
	end

	def included?(num)
		@items[ num % @items.length ].each_with_index do |el, i|
			return i if el == num
		end
		-1
	end

	def add(num)
		return false if included?(num) != -1
		resize if @item_count == @items.length
		@items[ num % @items.length ] << num
		@item_count += 1
		true
	end

	def remove(num)
		i = included?(num)
		if i != -1
			@items[ num % @items.length ].delete_at(i)
			@item_count -= 1
			true
		else
			false
		end
	end

	private
	def resize
		old_items = @items
		@items = Array.new(@items.length * 2) { [] }
		old_items.each do |bucket|
			bucket.each do |el|
				@items[ el % @items.length ] << el
			end
		end
	end
end

a = OptimizedSet.new
p a.items
p a.add(4)
p a.items
p a.add(8)
p a.items
p a.add(12)
p a.items
p a.add(16)
p a.items
p a.add(20)
p a.items
p a.add(24)
p a.items
p a.add(28)
p a.items
p a.add(32)
p a.items
p a.add(36)
p a.items