require './lib/node'

class LinkedList
attr_reader :head
  def initialize
  @head = nil
  end
    def append(data)
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
    
    def count
      count = 0
        current_node = @head
        until current_node.nil?
          count += 1
          current_node = current_node.next_node
        end
      count
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

    def prepend(data)
      current_head = @head
      @head = Node.new(data)
      @head.next_node = current_head
      data
    end

    def insert(position, data)
      current_node = @head
      (position - 1).times do
        current_node = current_node.next_node
      end
      new_node = Node.new(data)
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
      data
      end
end