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

    def is_empty?
        @items.empty?
    end
end