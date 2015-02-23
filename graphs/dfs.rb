require_relative 'tree'

class Node
	def dfs_iterative(target)
		nodes_to_check = [self]
		until nodes_to_check.empty?
			current_node = nodes_to_check.pop
			if current_node.value == target
				return current_node
			end
			nodes_to_check.concat(current_node.children)
		end
	end

	def dfs_recursive(target)
		return self if self.value == target

		self.children.each do |child|
			response = child.dfs_recursive(target)
			return response if !response.nil?
		end
		nil
	end
end