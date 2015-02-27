require_relative '../linked_lists/doubly_linked_list'

class Queue
	attr_accessor :items
	def initialize
		@items = LinkedList.new
	end

	def enqueue(value)
		@items.push(value)
	end

	def dequeue
		@items.shift
	end

	def peek
		@items.first.value
	end

	def is_empty?
		@items.is_empty?
	end
end