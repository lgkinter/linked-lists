class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    new_node = Node.new(value, nil)
    if size == 0
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
    @size += 1
  end

  def prepend(value)
    new_node = Node.new(value, nil)
    if size == 0
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
    @size += 1
  end

  def at(index)
    node = @head
    index.times { node = node.next_node }
    return node
  end

  def pop
    return puts "No items to pop" if @size == 0
    @tail = at(@size-2)
    @tail.next_node = nil
    @size -= 1
  end

  def contains?(value)
    find(value).nil? ? false : true
  end

  def find(data)
    node = @head
    0.upto(@size-1) do |i|
      return i if node.value == data
      node = node.next_node
    end
    return nil
  end

  def to_s
    return "Empty list" if @size == 0
    str = ""
    node = @head
    @size.times do
      str << "( #{node.value} ) -> "
      node = node.next_node
    end
    str << "nil"
  end

  def insert_at(index, value)
    new_node = Node.new(value, nil)
    if size == 0
      @head = new_node
      @tail = new_node
    else
      curr_node = at(index)
      following_node = at(index+1)
      curr_node.next_node = new_node
      new_node.next_node = following_node
    end
    @size += 1
  end

  def remove_at(index)
    begin
      node_to_be_removed = at(index)
    rescue NoMethodError => e
      return puts "There is no node to remove at index #{index}"
    end
    if index == 0
      @head = @head.next_node
      @size -= 1
    elsif node_to_be_removed == @tail
      pop
    else
      prev_node = at(index-1)
      following_node = at(index+1)
      prev_node.next_node = following_node
      @size -= 1
    end
  end

end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end
