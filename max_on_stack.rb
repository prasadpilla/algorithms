class Stack

    def initialize
        @items = []
    end

    def push(item)
        @items << item
    end

    def pop
        return false if @items.empty?
        @items.pop
    end

    def peek
        return false if @items.empty?
        @items.last
    end
end

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