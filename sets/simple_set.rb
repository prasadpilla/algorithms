class SimpleSet
	attr_accessor :items

	def initialize
		@items = []
	end

	def includes?(item)
		@items.any? { |el| el == item }
	end

	def insert(item)
		return false if includes?(item)
		@items << item
		true
	end

	def delete(item)
		@items.each_with_index do |el, i|
			if el == item
				@items.delete_at(i) 
				return true
			end
		end
		false
	end
end