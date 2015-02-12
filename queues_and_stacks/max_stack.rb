reqiure_relative 'stack'

class MaxStack < Stack
  def push(item)
    if @items.empty? || self.max < item 
      max = item
    else
      max = self.max
    end
    @items << { item: item, max: max }
  end

  def last
    return false if @items.empty?
    @items.last[:item]
  end

  def max
    return false if @items.empty?
    @items.last[:max]
  end
end