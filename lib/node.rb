class Node
  attr_reader :data, :next_node
  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end
end