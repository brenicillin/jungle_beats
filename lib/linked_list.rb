require './lib/node'

class LinkedList
attr_reader :head
  def initialize
  @head = nil
  end

    def append(data)
      valid_sound = check_sound(data)
      if valid_sound == true
        if @head.nil?                     #if head is not assigned,
          @head = Node.new(data)        #head = new node
          else                              #if head is assigned,
          current_node = @head              #start at @head as current_node
          until current_node.next_node.nil?   #until current_node.next_node is nil (there is no next node)
              current_node = current_node.next_node   #cycle through the nodes
          end
            current_node.next_node = Node.new(data)   #simultaneously creates a new node and adjusts current node's pointer
          end
        data    #return the data entered instead of entire node 
      else "Error: Not a valid sound"
      end
    end
    
    def count
      count = 0     #length counter begins at 0 when no head is present
        current_node = @head
        until current_node.nil?   #checks for a @head(which is assigned to current_node)
          count += 1        #adds 1 to length counter each time this block runs
          current_node = current_node.next_node   #moves to the next node and repeats block
        end
      count   #return total count after all code has ran
    end
  
    def to_string
      string = ""   #establishes an empty string to contain the data
      current_node = @head    #begin the block at @head
        until current_node.nil?   #until the end of the list where current_node = nil
          string << "#{current_node.data} "   #push current_node's data into the empty string
          current_node = current_node.next_node 
        end
        string.strip    #removes the extra space at the end of the string and returns to console
    end

    def prepend(data)
      valid_sound = check_sound(data)
      if valid_sound == true
        current_head = @head    #stores the current head as a local variable
        @head = Node.new(data)    #creates a new node using the data passed and assigns it as head
        @head.next_node = current_head  #places the value stored in current_head as the new head's next.node
        data    #returns the data passed as an argument to console
      else "Error: Not a valid sound"
     end
    end

    def insert(position, data)
      valid_sound = check_sound(data)
      if valid_sound == true
        current_node = @head     #begins the block at the @head
        (position - 1).times do   #the integer passed at position minus 1 times,
          current_node = current_node.next_node   #pass to the next node
        end
        new_node = Node.new(data)   #create a new node object stored in new_node
        new_node.next_node = current_node.next_node #the new node's next node will be the current node's next node
        current_node.next_node = new_node   #and the current node's next node will be this new node
        data
      else "Error: Not a valid sound"
      end
    end
    
    def find(position, number)
      array = self.to_string.split(" ") #calls the to_string method on the list and splits them with space
      array[position..position + number - 1].join(" ") #creates an array that ranges from the position to the given number minus 1 position, joins them separated by a space
    end

    def includes?(data)
      self.to_string.include?(data)  #calls the to_string method on the list and checks for data within the string
    end

    def pop
      current_node = @head
      while current_node.next_node.next_node        #while able to call .next_node twice,
        current_node = current_node.next_node     #cycle through nodes
      end
      result = current_node.next_node.data      #store next node's data in the result variable
      current_node.next_node = nil              #set next node to equal nil, effectively erasing next node
      result                                    #prints value saved in result to console
    end

    def check_sound(data)
      filename = "acceptable_sounds.txt"
      valid_sound = false
      file = File.open(filename)
      File.foreach(filename) do |sound|
        sound.chomp!
        valid_sound = true if sound == data
      end
      file.close
      valid_sound
    end
end