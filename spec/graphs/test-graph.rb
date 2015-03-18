require 'rspec'
require_relative '../../graphs/graph.rb'

describe "Vertex" do
	describe "#initialize" do
		it "creates an empty array of edges" do
			v = Vertex.new(4)
			expect(v.edges).to eq([])
		end

		it "has a value that was passed to it" do
			v = Vertex.new(4)
			expect(v.value).to eq(4)
		end
	end
end

describe "Edge" do
 
	describe "#initialize" do
		it "creates two vertices associated with the edge" do
			a = Vertex.new(4)
			b = Vertex.new(2)

			e = Edge.new(4, a, b)
			expect(e.vertices).to eq([a,b])
		end

		it "creates a length associated with the edge" do
			a = Vertex.new(4)
			b = Vertex.new(2)
			
			e = Edge.new(5, a, b)
			expect(e.length).to eq(5)
		end

		it "adds the current edge to the vertices passed" do
			a = Vertex.new(4)
			b = Vertex.new(2)
			
			e = Edge.new(5, a, b)
			expect(a.edges).to eq([e])
			expect(b.edges).to eq([e])
		end
	end
end