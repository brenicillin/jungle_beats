class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
    @rate = 400
    @voice = "Boing"
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
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
  end

  def reset_voice
    @voice = "Boing"
    return @voice
  end
  
  def voice(name)
    self.instance_variable_set(:@voice, "#{name}")
  end

  def reset_rate
    @rate = 400
    return @rate
  end

  def rate(speed)
    self.instance_variable_set(:@rate, speed)
  end
end