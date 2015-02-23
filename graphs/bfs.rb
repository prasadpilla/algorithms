require_relative 'tree'
require_relative '../queues_and_stacks/queue'

class Node
	def bfs(target)
		queue = Queue.new
		queue.enqueue(self)
		until queue.is_empty?
			current_node = queue.dequeue
			puts current_node.value
			if current_node.value == target
				return current_node
			end
			current_node.children.each do |el|
				queue.enqueue(el)
			end
		end
	end
end


a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new (4)
e = Node.new (5)
f = Node.new (6)

a.add_child(b)
a.add_child(c)

b.add_child(d)
b.add_child(e)

c.add_child(f)

p a.bfs(6)