class Node
  attr_accessor :after, :before, :value

  def initialize(value)
  	@value = value
  end

  def delete
    @before.after = @after
    @after.before = @before
  end

  def add_left(new_node)
    before_node = @before

    before_node.after = new_node
    new_node.after = self

    new_node.before = before_node
    @before = new_node
  end

  def add_right(new_node)
    after_node = @after

    after_node.before = new_node
    new_node.before = self

    new_node.after = after_node
    @after = new_node
  end
end