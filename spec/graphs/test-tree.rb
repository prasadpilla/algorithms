require 'rspec'
require_relative '../../graphs/tree'

describe 'Node' do
	describe '#initialize' do
		it 'creates root node without a parent' do
			node = Node.new(4)
			expect(node.parent).to be nil
		end

		it 'creates root node without children' do
			node = Node.new(4)
			expect(node.children).to eq([])
		end

		it 'creates root node with a value' do
			node = Node.new(4)
			expect(node.value).to eq(4)
		end
	end

	describe '#set_parent' do
		it "sets the input as the parent" do
			a = Node.new(4)
			b = Node.new(8)
			b.set_parent(a)

			expect(b.parent).to eq(a)
		end

		it "adds the current node to the list of children of the input" do
			a = Node.new(4)
			b = Node.new(8)
			b.set_parent(a)

			expect(a.children).to eq([b])
		end

		it "removes the current node from the current parent's children before adding new parent" do
			a = Node.new(4)
			b = Node.new(8)
			b.set_parent(a)
			c = Node.new(12)
			b.set_parent(c)

			expect(a.children).to eq([])
		end
	end

	describe "#add_child" do
		it "adds a child to the current node" do
			a = Node.new(4)
			b = Node.new(8)
			a.add_child(b)
			c = Node.new(12)
			c.add_child(b)

			expect(a.children).to eq([])
			expect(c.children).to eq([b])
			expect(b.parent).to eq(c)
		end
	end
end