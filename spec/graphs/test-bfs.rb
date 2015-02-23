require 'rspec'
require_relative '../../graphs/bfs'

describe 'bfs' do
	it 'finds a node that exists' do
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

		expect(a.bfs(6)).to eq(f)
	end
end

