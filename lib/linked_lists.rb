class LinkedList
  attr_accessor :name
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    node = Node.new(data)
    @head = node if @head.nil?
    @tail.next = node unless @tail.nil?
    @tail = node
  end

  def prepend(data)
    node = Node.new(data)
    @tail = node if @tail.nil?
    node.next = @head unless @head.nil?
    @head = node
  end

  def size
    number_of_nodes = 0
    node = @head
    until node.nil?
      number_of_nodes += 1
      node = node.next
    end
    number_of_nodes
  end

  def at(index)
    node = @head
    node_idx = 0
    until node_idx == index
      node = node.next
      node_idx += 1
      break if node.nil?
    end
    node.data
  end

  def pop
    node = @head
    node = node.next until node.next == @tail
    @tail = node
    @tail.next = nil
  end

  def contains?(data)
    node = @head
    until node.data == data
      return false if node.next.nil?

      node = node.next
    end
    true
  end

  def find(data)
    node = @head
    node_idx = 0
    until node.data == data
      return nil if node.next.nil?

      node = node.next
      node_idx += 1
    end
    node_idx
  end

  def to_s
    node = @head
    until node.nil?
      print "( #{node.data} ) -> "
      node = node.next
    end
    print "nil\n"
  end

  def insert_at(data, index)
    node = @head
    node_idx = 0
    until node_idx == index - 1
      node = node.next
      node_idx += 1
    end
    new_node = Node.new(data)
    new_node.next = node.next
    node.next = new_node
  end

  def remove_at(index)
    node = @head
    node_idx = 0
    until node_idx == index - 1
      node = node.next
      node_idx += 1
    end
    node.next.data = nil
    node.next = node.next.next
  end
end

class Node
  attr_accessor :data, :next

  def initialize(data = nil)
    @data = data
    @next = nil
  end
end
