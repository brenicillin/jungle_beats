require './lib/node'

class LinkedList
attr_reader :head, :count
  def initialize
  @head = nil
  @count = 0
  end
  def append(data)
   this_node = Node.new(data)
   if @head.nil?
    @head = this_node
    @count += 1
    return data
   end
  end
  def to_string
    head.data
  end
end