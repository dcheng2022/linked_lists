class LinkedList
  attr_accessor :name

  def initialize
    @head = head
    @tail = tail
  end
end

class Node
  attr_acessor :data, :next

  def initialize(data = nil)
    @data = data
    @next = nil
  end
end
