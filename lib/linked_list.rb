require './lib/node'

class LinkedList
attr_reader :head, :count
  def initialize
  @head = nil
  @count = 0
  end
    def append(data)
      @count += 1
    if @head.nil?
        @head = Node.new(data)
    else
        current_node = @head
        until current_node.next_node.nil?
            current_node = current_node.next_node
        end
        current_node.next_node = Node.new(data)
        end
        return data
    end
  
    def to_string
      string = ""
      current_node = @head
        until current_node.nil?
          string << "#{current_node.data} "
          current_node = current_node.next_node
        end
      string.strip
    end   
end