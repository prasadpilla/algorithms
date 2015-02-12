require_relative 'stack'

class Queue
	attr_accessor :enqueue_stack, :dequeue_stack


	def initialize
		@enqueue_stack = Stack.new()
		@dequeue_stack = Stack.new()
	end

	def enqueue(item)
		@enqueue_stack.push(item)
	end

	def dequeue
		move_to_dequeue
		@dequeue_stack.pop
	end

	def move_to_dequeue
		if @dequeue_stack.is_empty?
			until enqueue_stack.is_empty?
				@dequeue_stack.push(@enqueue_stack.pop)
			end
		end
	end

	def peek
		move_to_dequeue
		@dequeue_stack.peek
	end

	def is_empty?
		enqueue_stack.is_empty? && dequeue_stack.is_empty?
	end

end