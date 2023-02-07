class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    array = data.split(' ')
    array.each do |sound|
      list.append(sound)
    end
    data
  end

  def count
    new_count = @list.count
    new_count
  end

  def play
    `say -r #{speed} #{@list.to_string}`
  end
end