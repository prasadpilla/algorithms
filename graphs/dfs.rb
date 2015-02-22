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
end