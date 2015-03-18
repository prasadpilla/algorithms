require 'rspec'
require_relative '../../search/Dijkstra.rb'

describe "#dijkstra" do
	it "calculates the shortest path" do
		a = Vertex.new(1)
		b = Vertex.new(2)
		c = Vertex.new(3)
		d = Vertex.new(4)

		u = Edge.new(1, a, b)
		v = Edge.new(1, b, c)
		w = Edge.new(1, c, d)

		x = Edge.new(4, a, c)
		y = Edge.new(4, c, d)

		z = Edge.new(20, a, d)

		expect(dijkstra(a,d)).to eq(3)
	end
end