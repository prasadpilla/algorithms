require 'rspec'
require_relative '../../graphs/bfs'

describe 'bfs' do
	it 'finds a node that exists' do
		a = TreeNode.new(1)
		b = TreeNode.new(2)
		c = TreeNode.new(3)
		
		b.set_parent(a)
		c.set_parent(a)

		expect(a.bfs(3)).to eq(c)
	end

	it 'returns nil when no node exists' do
		a = TreeNode.new(1)
		b = TreeNode.new(2)

		a.add_child(b)

		expect(a.bfs(3)).to be_nil
	end
end

