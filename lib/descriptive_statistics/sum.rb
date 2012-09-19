module DescriptiveStatistics
  def sum
    return self.inject(:+) || 0
  end
end
