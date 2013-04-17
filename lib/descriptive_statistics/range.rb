module DescriptiveStatistics
  def range
    return 0 unless self.number > 0
    self.max - self.min
  end 
end
