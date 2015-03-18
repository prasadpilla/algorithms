class Vertex
	attr_reader :edges, :value

	def initialize(value)
		@edges = []
		@value = value
	end
end

class Edge
	attr_reader :length, :vertices

	def initialize(length, vertex_a, vertex_b)
		@length = length
		@vertices = [vertex_a, vertex_b]
		vertex_a.edges << self
		vertex_b.edges << self
	end
end