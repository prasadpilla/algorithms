require_relative 'tree'

class Node
	def dfs_iterative(target)
		nodes_to_check = [self]
		until nodes_to_check.empty?
			current_node = nodes_to_check.pop
			puts current_node.value
			if current_node.value == target
				return current_node
			end
			nodes_to_check.concat(current_node.children)
		end
		false
	end

	def dfs_recursive(target)
		return self if self.value == target

		self.children.each do |child|
			child.dfs_recursive(target)
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

p a.dfs_recursive(3)