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
end

class Node
  attr_accessor :data, :next

  def initialize(data = nil)
    @data = data
    @next = nil
  end
end
