class Array

  # usage:  [1,2,3,4,6,7,8].each_with_range(2..5) { |n| puts n**2 }
  def each_with_range(range, &block)
    range.each do |i|
      yield self[i]
    end
  end
  
  # usage: [1,2,3].add_to_all(6)
  def add_to_all(number)
    self.collect { |x| x + number }
  end
  
end

