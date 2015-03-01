class TreeNode
	attr_accessor :parent, :children, :value

	def initialize(value)
		@value = value
		@parent = nil
		@children = []
	end

	def set_parent(parent_node)
		if @parent
			@parent.children.delete(self)
		end

		@parent = parent_node
		@parent.children << self 
	end

	def add_child(child_node)
		child_node.set_parent(self)
	end
end