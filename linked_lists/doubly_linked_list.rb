require_relative 'node'

class LinkedList
  attr_accessor :first_node, :last_node

  def initialize
  	@first_node = Node.new(nil)
  	@last_node = Node.new(nil)
  	
  	@first_node.after = @last_node
  	@last_node.before = @first_node
  end

  def is_empty?
  	@first_node.after == @last_node
  end

  def first
  	first_node.after
  end

  def last
  	last_node.before
  end

  def push(value)
  	new_node = Node.new(value)
  	@last_node.add_left(new_node)
  end

  def pop
  	keep_ends
  	value = last.value
  	last.delete
  	value
  end

  def unshift(value)
  	new_node = Node.new(value)
  	@first_node.add_right(new_node)
  end

  def shift
  	keep_ends
  	value = first.value
  	first.delete
  	value
  end

  def keep_ends
  	raise "linked list is empty" if is_empty?
  end
end