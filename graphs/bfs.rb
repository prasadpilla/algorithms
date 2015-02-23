require_relative 'tree'
require_relative '../queues_and_stacks/queue'

class Node
	def bfs(target)
		queue = Queue.new
		queue.enqueue(self)
		until queue.is_empty?
			current_node = queue.dequeue
			if current_node.value == target
				return current_node
			end
			current_node.children.each do |el|
				queue.enqueue(el)
			end
		end
	end
end