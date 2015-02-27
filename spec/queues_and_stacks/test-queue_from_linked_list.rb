require_relative '../../queues_and_stacks/queue_from_linked_list'

describe 'Queue' do
	describe '#initialize' do
		it 'initializes a new linked list' do
			queue = Queue.new
			expect(queue.items).to be_instance_of(LinkedList)
		end
	end

	describe '#is_empty?' do
		it 'returns true when initialized' do
			queue = Queue.new
			expect(queue.is_empty?).to be true
		end

		it 'returns false once an element has been added' do
			queue = Queue.new
			queue.enqueue(4)
			expect(queue.is_empty?).to be false
		end
	end

	describe '#enqueue' do
		it 'adds a new item to the queue' do
			queue = Queue.new
			queue.enqueue(4)
			queue.enqueue(2)
		end
	end

	describe '#dequeue' do
		it 'removes the first element in the queue' do
			queue = Queue.new
			queue.enqueue(4)
			queue.enqueue(2)
			queue.dequeue
			expect(queue.peek).to eq(2)
		end

		it 'is empty after removing element' do
			queue = Queue.new
			queue.enqueue(2)
			queue.dequeue
			expect(queue.is_empty?).to be true
		end
	end

	describe '#peek' do
		it 'looks at the first element in the queue' do
			queue = Queue.new
			queue.enqueue(2)
			queue.enqueue(4)
			expect(queue.peek).to eq(2)
		end
	end
end