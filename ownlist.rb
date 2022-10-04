# linked list is a way to store data in a list format
# data is stored in a node and these nodes are linked to each other in a sequential manner
# linked list can be more efficient for certain tasks than an array
# there is no indexing, no random access, you cant reach out for an item in the middle of an array
# you have to start at the head of the list and follow the links until you find the node you want or until the end of the list
# removing or adding an item from the middle of a linked list is a lot faster

## operations
# 1. append(to the end of the list)
# 2. append_after
# 3. delete
# 4. find
class Node
  attr_accessor :next
  attr_reader :value

  def initialize(value)
    @value = value
    @next = nil
  end
  def to_s
    "Node with value:#{@value}"
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head
    # return node which is like the head if we do not have a next node
    return node if !node.next
    return node if !node.next while(node = node.next)
  end
end

list = LinkedList.new
list.append(10)
list.append(20)
list.append(30)
# list.append_after(10, 15)
# list.append_after(20, 25)
# list.print